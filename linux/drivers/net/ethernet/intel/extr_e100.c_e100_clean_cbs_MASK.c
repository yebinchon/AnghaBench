#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ count; } ;
struct TYPE_7__ {TYPE_1__ cbs; } ;
struct nic {scalar_t__ cbs_avail; struct cb* cbs; struct cb* cb_to_clean; struct cb* cb_to_send; struct cb* cb_to_use; int /*<<< orphan*/  cuc_cmd; int /*<<< orphan*/  cbs_dma_addr; int /*<<< orphan*/  cbs_pool; int /*<<< orphan*/  pdev; TYPE_2__ params; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  buf_addr; } ;
struct TYPE_9__ {TYPE_3__ tbd; } ;
struct TYPE_10__ {TYPE_4__ tcb; } ;
struct cb {struct cb* next; scalar_t__ skb; TYPE_5__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  cuc_start ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nic *nic)
{
	if (nic->cbs) {
		while (nic->cbs_avail != nic->params.cbs.count) {
			struct cb *cb = nic->cb_to_clean;
			if (cb->skb) {
				FUNC4(nic->pdev,
					FUNC3(cb->u.tcb.tbd.buf_addr),
					FUNC2(cb->u.tcb.tbd.size),
					PCI_DMA_TODEVICE);
				FUNC0(cb->skb);
			}
			nic->cb_to_clean = nic->cb_to_clean->next;
			nic->cbs_avail++;
		}
		FUNC1(nic->cbs_pool, nic->cbs, nic->cbs_dma_addr);
		nic->cbs = NULL;
		nic->cbs_avail = 0;
	}
	nic->cuc_cmd = cuc_start;
	nic->cb_to_use = nic->cb_to_send = nic->cb_to_clean =
		nic->cbs;
}