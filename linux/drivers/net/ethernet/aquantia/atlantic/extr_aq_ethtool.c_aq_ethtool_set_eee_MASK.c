#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_eee {scalar_t__ eee_enabled; } ;
struct aq_nic_s {int /*<<< orphan*/  fwreq_mutex; int /*<<< orphan*/  aq_hw; TYPE_1__* aq_fw_ops; } ;
struct aq_nic_cfg_s {scalar_t__ eee_speeds; } ;
struct TYPE_2__ {int (* get_eee_rate ) (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ;int (* set_eee_rate ) (int /*<<< orphan*/ ,scalar_t__) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct aq_nic_cfg_s* FUNC0 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct aq_nic_s* FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev, struct ethtool_eee *eee)
{
	struct aq_nic_s *aq_nic = FUNC3(ndev);
	u32 rate, supported_rates;
	struct aq_nic_cfg_s *cfg;
	int err = 0;

	cfg = FUNC0(aq_nic);

	if (FUNC6(!aq_nic->aq_fw_ops->get_eee_rate ||
		     !aq_nic->aq_fw_ops->set_eee_rate))
		return -EOPNOTSUPP;

	FUNC1(&aq_nic->fwreq_mutex);
	err = aq_nic->aq_fw_ops->get_eee_rate(aq_nic->aq_hw, &rate,
					      &supported_rates);
	FUNC2(&aq_nic->fwreq_mutex);
	if (err < 0)
		return err;

	if (eee->eee_enabled) {
		rate = supported_rates;
		cfg->eee_speeds = rate;
	} else {
		rate = 0;
		cfg->eee_speeds = 0;
	}

	FUNC1(&aq_nic->fwreq_mutex);
	err = aq_nic->aq_fw_ops->set_eee_rate(aq_nic->aq_hw, rate);
	FUNC2(&aq_nic->fwreq_mutex);

	return err;
}