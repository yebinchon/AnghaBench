#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_4__ {void* phy_base; void* io_base; } ;
struct ring_pair_cb {size_t index; int* virq; TYPE_2__ q; int /*<<< orphan*/  port_id_in_comm; int /*<<< orphan*/  dev; struct rcb_common_cb* rcb_common; } ;
struct rcb_common_cb {size_t ring_num; int /*<<< orphan*/  phy_base; int /*<<< orphan*/  io_base; TYPE_1__* dsaf_dev; struct ring_pair_cb* ring_pair_cb; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  dsaf_ver; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EPROBE_DEFER ; 
 size_t HNS_RCB_IRQ_IDX_RX ; 
 size_t HNS_RCB_IRQ_IDX_TX ; 
 void* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (struct rcb_common_cb*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcb_common_cb*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ring_pair_cb*) ; 
 void* FUNC5 (struct platform_device*,int) ; 
 struct platform_device* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct rcb_common_cb *rcb_common)
{
	struct ring_pair_cb *ring_pair_cb;
	u32 i;
	u32 ring_num = rcb_common->ring_num;
	int base_irq_idx = FUNC2(rcb_common);
	struct platform_device *pdev =
		FUNC6(rcb_common->dsaf_dev->dev);
	bool is_ver1 = FUNC0(rcb_common->dsaf_dev->dsaf_ver);

	for (i = 0; i < ring_num; i++) {
		ring_pair_cb = &rcb_common->ring_pair_cb[i];
		ring_pair_cb->rcb_common = rcb_common;
		ring_pair_cb->dev = rcb_common->dsaf_dev->dev;
		ring_pair_cb->index = i;
		ring_pair_cb->q.io_base =
			FUNC1(rcb_common->io_base, i);
		ring_pair_cb->port_id_in_comm =
			FUNC3(rcb_common, i);
		ring_pair_cb->virq[HNS_RCB_IRQ_IDX_TX] =
		is_ver1 ? FUNC5(pdev, base_irq_idx + i * 2) :
			  FUNC5(pdev, base_irq_idx + i * 3 + 1);
		ring_pair_cb->virq[HNS_RCB_IRQ_IDX_RX] =
		is_ver1 ? FUNC5(pdev, base_irq_idx + i * 2 + 1) :
			  FUNC5(pdev, base_irq_idx + i * 3);
		if ((ring_pair_cb->virq[HNS_RCB_IRQ_IDX_TX] == -EPROBE_DEFER) ||
		    (ring_pair_cb->virq[HNS_RCB_IRQ_IDX_RX] == -EPROBE_DEFER))
			return -EPROBE_DEFER;

		ring_pair_cb->q.phy_base =
			FUNC1(rcb_common->phy_base, i);
		FUNC4(ring_pair_cb);
	}

	return 0;
}