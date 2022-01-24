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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct aq_nic_s {int /*<<< orphan*/  active_vlans; TYPE_1__* aq_hw_ops; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  hw_filter_vlan_set; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct aq_nic_s*) ; 
 struct aq_nic_s* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, __be16 proto,
				  u16 vid)
{
	struct aq_nic_s *aq_nic = FUNC1(ndev);

	if (!aq_nic->aq_hw_ops->hw_filter_vlan_set)
		return -EOPNOTSUPP;

	FUNC2(vid, aq_nic->active_vlans);

	return FUNC0(aq_nic);
}