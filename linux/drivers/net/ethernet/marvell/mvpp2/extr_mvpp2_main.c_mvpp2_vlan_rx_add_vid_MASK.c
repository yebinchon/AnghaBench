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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct mvpp2_port {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ MVPP2_PRS_VLAN_FILT_MAX ; 
 int FUNC0 (struct mvpp2_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,scalar_t__) ; 
 struct mvpp2_port* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, __be16 proto, u16 vid)
{
	struct mvpp2_port *port = FUNC2(dev);
	int ret;

	ret = FUNC0(port, vid);
	if (ret)
		FUNC1(dev, "rx-vlan-filter offloading cannot accept more than %d VIDs per port\n",
			   MVPP2_PRS_VLAN_FILT_MAX - 1);
	return ret;
}