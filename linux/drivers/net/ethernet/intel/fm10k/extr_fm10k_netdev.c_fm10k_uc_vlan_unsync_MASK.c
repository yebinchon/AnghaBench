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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct fm10k_intfc {int glort; int vid; } ;

/* Variables and functions */
 int VLAN_N_VID ; 
 int FUNC0 (struct fm10k_intfc*,int,unsigned char const*,int,int) ; 
 struct fm10k_intfc* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
				const unsigned char *uc_addr)
{
	struct fm10k_intfc *interface = FUNC1(netdev);
	u16 glort = interface->glort;
	u16 vid = interface->vid;
	bool set = !!(vid / VLAN_N_VID);
	int err;

	/* drop any leading bits on the VLAN ID */
	vid &= VLAN_N_VID - 1;

	err = FUNC0(interface, glort, uc_addr, vid, set);
	if (err)
		return err;

	/* return non-zero value as we are only doing a partial sync/unsync */
	return 1;
}