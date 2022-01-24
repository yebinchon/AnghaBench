#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct aq_nic_s {size_t aq_vecs; TYPE_1__* ndev; int /*<<< orphan*/ * aq_vec; int /*<<< orphan*/  fwreq_mutex; int /*<<< orphan*/  aq_hw; TYPE_4__* aq_fw_ops; } ;
struct TYPE_9__ {size_t vecs; } ;
struct TYPE_8__ {int (* get_mac_permanent ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/ * AQ_CFG_MAC_ADDR_PERMANENT ; 
 int EINVAL ; 
 int ENOMEM ; 
 TYPE_5__* FUNC0 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_nic_s*,size_t,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct aq_nic_s *self)
{
	int err = 0;

	if (!self->ndev) {
		err = -EINVAL;
		goto err_exit;
	}

	err = FUNC3(self->aq_hw, &self->aq_fw_ops);
	if (err)
		goto err_exit;

	FUNC4(&self->fwreq_mutex);
	err = self->aq_fw_ops->get_mac_permanent(self->aq_hw,
			    self->ndev->dev_addr);
	FUNC5(&self->fwreq_mutex);
	if (err)
		goto err_exit;

#if defined(AQ_CFG_MAC_ADDR_PERMANENT)
	{
		static u8 mac_addr_permanent[] = AQ_CFG_MAC_ADDR_PERMANENT;

		ether_addr_copy(self->ndev->dev_addr, mac_addr_permanent);
	}
#endif

	for (self->aq_vecs = 0; self->aq_vecs < FUNC0(self)->vecs;
	     self->aq_vecs++) {
		self->aq_vec[self->aq_vecs] =
		    FUNC1(self, self->aq_vecs, FUNC0(self));
		if (!self->aq_vec[self->aq_vecs]) {
			err = -ENOMEM;
			goto err_exit;
		}
	}

	FUNC6(self->ndev);

	FUNC7(self->ndev);

	err = FUNC8(self->ndev);
	if (err)
		goto err_exit;

err_exit:
	return err;
}