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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mlxsw_tx_info {int /*<<< orphan*/  local_port; int /*<<< orphan*/  is_emad; } ;
struct TYPE_5__ {struct sk_buff* skb; } ;
struct TYPE_6__ {TYPE_1__ sdq; } ;
struct mlxsw_pci_queue_elem_info {char* elem; TYPE_2__ u; } ;
struct mlxsw_pci_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  consumer_counter; } ;
struct mlxsw_pci {int /*<<< orphan*/  core; struct pci_dev* pdev; } ;
struct TYPE_8__ {struct mlxsw_tx_info tx_info; } ;
struct TYPE_7__ {int tx_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int MLXSW_PCI_WQE_SG_ENTRIES ; 
 int SKBTX_HW_TSTAMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct mlxsw_pci_queue_elem_info* FUNC3 (struct mlxsw_pci_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_pci*,char*,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (struct sk_buff*) ; 
 TYPE_3__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct mlxsw_pci *mlxsw_pci,
				     struct mlxsw_pci_queue *q,
				     u16 consumer_counter_limit,
				     char *cqe)
{
	struct pci_dev *pdev = mlxsw_pci->pdev;
	struct mlxsw_pci_queue_elem_info *elem_info;
	struct mlxsw_tx_info tx_info;
	char *wqe;
	struct sk_buff *skb;
	int i;

	FUNC7(&q->lock);
	elem_info = FUNC3(q);
	tx_info = FUNC5(elem_info->u.sdq.skb)->tx_info;
	skb = elem_info->u.sdq.skb;
	wqe = elem_info->elem;
	for (i = 0; i < MLXSW_PCI_WQE_SG_ENTRIES; i++)
		FUNC4(mlxsw_pci, wqe, i, DMA_TO_DEVICE);

	if (FUNC9(!tx_info.is_emad &&
		     FUNC6(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
		FUNC2(mlxsw_pci->core, skb,
					   tx_info.local_port);
		skb = NULL;
	}

	if (skb)
		FUNC1(skb);
	elem_info->u.sdq.skb = NULL;

	if (q->consumer_counter++ != consumer_counter_limit)
		FUNC0(&pdev->dev, "Consumer counter does not match limit in SDQ\n");
	FUNC8(&q->lock);
}