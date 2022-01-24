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
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct fm10k_intfc {scalar_t__ glort; } ;
typedef  int s32 ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 scalar_t__ VLAN_N_VID ; 
 scalar_t__ FUNC0 (struct fm10k_intfc*,scalar_t__) ; 
 int FUNC1 (struct fm10k_intfc*,scalar_t__,unsigned char const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*) ; 
 struct fm10k_intfc* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			   const unsigned char *addr, bool sync)
{
	struct fm10k_intfc *interface = FUNC3(dev);
	u16 vid, glort = interface->glort;
	s32 err;

	if (!FUNC2(addr))
		return -EADDRNOTAVAIL;

	for (vid = FUNC0(interface, 0);
	     vid < VLAN_N_VID;
	     vid = FUNC0(interface, vid)) {
		err = FUNC1(interface, glort,
					      addr, vid, sync);
		if (err)
			return err;
	}

	return 0;
}