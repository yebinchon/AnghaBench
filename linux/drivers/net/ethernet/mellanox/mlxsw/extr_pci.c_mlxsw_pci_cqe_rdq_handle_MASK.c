#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  sys_port; int /*<<< orphan*/  lag_id; } ;
struct mlxsw_rx_info {int is_lag; int /*<<< orphan*/  trap_id; TYPE_3__ u; int /*<<< orphan*/  lag_port_index; } ;
struct TYPE_4__ {struct sk_buff* skb; } ;
struct TYPE_5__ {TYPE_1__ sdq; } ;
struct mlxsw_pci_queue_elem_info {char* elem; TYPE_2__ u; } ;
struct mlxsw_pci_queue {int /*<<< orphan*/  producer_counter; int /*<<< orphan*/  elem_size; int /*<<< orphan*/  consumer_counter; } ;
struct mlxsw_pci {int /*<<< orphan*/  core; struct pci_dev* pdev; } ;
typedef  enum mlxsw_pci_cqe_v { ____Placeholder_mlxsw_pci_cqe_v } mlxsw_pci_cqe_v ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,struct mlxsw_rx_info*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_pci*,struct mlxsw_pci_queue*) ; 
 struct mlxsw_pci_queue_elem_info* FUNC11 (struct mlxsw_pci_queue*) ; 
 int FUNC12 (struct mlxsw_pci*,struct mlxsw_pci_queue_elem_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlxsw_pci*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct mlxsw_pci *mlxsw_pci,
				     struct mlxsw_pci_queue *q,
				     u16 consumer_counter_limit,
				     enum mlxsw_pci_cqe_v cqe_v, char *cqe)
{
	struct pci_dev *pdev = mlxsw_pci->pdev;
	struct mlxsw_pci_queue_elem_info *elem_info;
	char *wqe;
	struct sk_buff *skb;
	struct mlxsw_rx_info rx_info;
	u16 byte_count;
	int err;

	elem_info = FUNC11(q);
	skb = elem_info->u.sdq.skb;
	if (!skb)
		return;
	wqe = elem_info->elem;
	FUNC13(mlxsw_pci, wqe, 0, DMA_FROM_DEVICE);

	if (q->consumer_counter++ != consumer_counter_limit)
		FUNC0(&pdev->dev, "Consumer counter does not match limit in RDQ\n");

	if (FUNC5(cqe_v, cqe)) {
		rx_info.is_lag = true;
		rx_info.u.lag_id = FUNC6(cqe_v, cqe);
		rx_info.lag_port_index =
			FUNC7(cqe_v, cqe);
	} else {
		rx_info.is_lag = false;
		rx_info.u.sys_port = FUNC8(cqe);
	}

	rx_info.trap_id = FUNC9(cqe);

	byte_count = FUNC3(cqe);
	if (FUNC4(cqe_v, cqe))
		byte_count -= ETH_FCS_LEN;
	FUNC14(skb, byte_count);
	FUNC2(mlxsw_pci->core, skb, &rx_info);

	FUNC1(wqe, 0, q->elem_size);
	err = FUNC12(mlxsw_pci, elem_info);
	if (err)
		FUNC0(&pdev->dev, "Failed to alloc skb for RDQ\n");
	/* Everything is set up, ring doorbell to pass elem to HW */
	q->producer_counter++;
	FUNC10(mlxsw_pci, q);
	return;
}