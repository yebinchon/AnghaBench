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
struct net_device {int dummy; } ;
struct aq_nic_s {int /*<<< orphan*/  fwreq_mutex; int /*<<< orphan*/  aq_hw; TYPE_1__* aq_fw_ops; } ;
struct TYPE_2__ {int (* renegotiate ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct aq_nic_s* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct aq_nic_s *aq_nic = FUNC2(ndev);
	int err = 0;

	if (FUNC5(!aq_nic->aq_fw_ops->renegotiate))
		return -EOPNOTSUPP;

	if (FUNC3(ndev)) {
		FUNC0(&aq_nic->fwreq_mutex);
		err = aq_nic->aq_fw_ops->renegotiate(aq_nic->aq_hw);
		FUNC1(&aq_nic->fwreq_mutex);
	}

	return err;
}