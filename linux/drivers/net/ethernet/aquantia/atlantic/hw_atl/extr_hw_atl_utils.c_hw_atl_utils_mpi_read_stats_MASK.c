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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {unsigned int ubrc; unsigned int uprc; unsigned int ubtc; unsigned int uptc; int /*<<< orphan*/  dpc; } ;
struct hw_atl_utils_mbox {TYPE_2__ stats; } ;
struct aq_hw_s {int /*<<< orphan*/  dpc; TYPE_1__* aq_nic_cfg; int /*<<< orphan*/  mbox_addr; } ;
struct TYPE_3__ {unsigned int mtu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REVISION_A0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*) ; 
 int FUNC3 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC4(struct aq_hw_s *self,
				 struct hw_atl_utils_mbox *pmbox)
{
	int err = 0;

	err = FUNC3(self,
					    self->mbox_addr,
					    (u32 *)(void *)pmbox,
					    sizeof(*pmbox) / sizeof(u32));
	if (err < 0)
		goto err_exit;

	if (FUNC0(REVISION_A0)) {
		unsigned int mtu = self->aq_nic_cfg ?
					self->aq_nic_cfg->mtu : 1514U;
		pmbox->stats.ubrc = pmbox->stats.uprc * mtu;
		pmbox->stats.ubtc = pmbox->stats.uptc * mtu;
		pmbox->stats.dpc = FUNC1(&self->dpc);
	} else {
		pmbox->stats.dpc = FUNC2(self);
	}

err_exit:;
}