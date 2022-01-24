#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qlcnic_adapter {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 struct qlcnic_adapter* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*,struct ethtool_link_ksettings*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*,struct ethtool_link_ksettings*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				     struct ethtool_link_ksettings *ecmd)
{
	struct qlcnic_adapter *adapter = FUNC0(dev);

	if (FUNC1(adapter))
		return FUNC2(adapter, ecmd);
	else if (FUNC3(adapter))
		return FUNC4(adapter, ecmd);

	return -EIO;
}