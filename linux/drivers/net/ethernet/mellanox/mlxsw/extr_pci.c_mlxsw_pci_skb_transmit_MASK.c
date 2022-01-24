#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; } ;
struct mlxsw_tx_info {int /*<<< orphan*/  is_emad; } ;
struct TYPE_5__ {struct sk_buff* skb; } ;
struct TYPE_6__ {TYPE_1__ sdq; } ;
struct mlxsw_pci_queue_elem_info {char* elem; TYPE_2__ u; } ;
struct mlxsw_pci_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  producer_counter; } ;
struct mlxsw_pci {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_8__ {struct mlxsw_tx_info tx_info; } ;
struct TYPE_7__ {int nr_frags; int tx_flags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EAGAIN ; 
 int MLXSW_PCI_WQE_SG_ENTRIES ; 
 int /*<<< orphan*/  MLXSW_PCI_WQE_TYPE_ETHERNET ; 
 int SKBTX_HW_TSTAMP ; 
 int SKBTX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_pci*,struct mlxsw_pci_queue*) ; 
 struct mlxsw_pci_queue_elem_info* FUNC1 (struct mlxsw_pci_queue*) ; 
 struct mlxsw_pci_queue* FUNC2 (struct mlxsw_pci*,struct mlxsw_tx_info const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct mlxsw_pci*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_pci*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*) ; 
 TYPE_3__* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(void *bus_priv, struct sk_buff *skb,
				  const struct mlxsw_tx_info *tx_info)
{
	struct mlxsw_pci *mlxsw_pci = bus_priv;
	struct mlxsw_pci_queue *q;
	struct mlxsw_pci_queue_elem_info *elem_info;
	char *wqe;
	int i;
	int err;

	if (FUNC14(skb)->nr_frags > MLXSW_PCI_WQE_SG_ENTRIES - 1) {
		err = FUNC13(skb);
		if (err)
			return err;
	}

	q = FUNC2(mlxsw_pci, tx_info);
	FUNC15(&q->lock);
	elem_info = FUNC1(q);
	if (!elem_info) {
		/* queue is full */
		err = -EAGAIN;
		goto unlock;
	}
	FUNC9(skb)->tx_info = *tx_info;
	elem_info->u.sdq.skb = skb;

	wqe = elem_info->elem;
	FUNC4(wqe, 1); /* always report completion */
	FUNC7(wqe, !!tx_info->is_emad);
	FUNC8(wqe, MLXSW_PCI_WQE_TYPE_ETHERNET);

	err = FUNC5(mlxsw_pci, wqe, 0, skb->data,
				     FUNC12(skb), DMA_TO_DEVICE);
	if (err)
		goto unlock;

	for (i = 0; i < FUNC14(skb)->nr_frags; i++) {
		const skb_frag_t *frag = &FUNC14(skb)->frags[i];

		err = FUNC5(mlxsw_pci, wqe, i + 1,
					     FUNC10(frag),
					     FUNC11(frag),
					     DMA_TO_DEVICE);
		if (err)
			goto unmap_frags;
	}

	if (FUNC17(FUNC14(skb)->tx_flags & SKBTX_HW_TSTAMP))
		FUNC14(skb)->tx_flags |= SKBTX_IN_PROGRESS;

	/* Set unused sq entries byte count to zero. */
	for (i++; i < MLXSW_PCI_WQE_SG_ENTRIES; i++)
		FUNC3(wqe, i, 0);

	/* Everything is set up, ring producer doorbell to get HW going */
	q->producer_counter++;
	FUNC0(mlxsw_pci, q);

	goto unlock;

unmap_frags:
	for (; i >= 0; i--)
		FUNC6(mlxsw_pci, wqe, i, DMA_TO_DEVICE);
unlock:
	FUNC16(&q->lock);
	return err;
}