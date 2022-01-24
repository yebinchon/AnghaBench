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
struct TYPE_2__ {int ne2k_flags; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int HOLTEK_FDX ; 
 int REALTEK_FDX ; 
 TYPE_1__ ei_status ; 
 int FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev)
{
	if (ei_status.ne2k_flags & REALTEK_FDX)
		return FUNC1(dev);
	else if (ei_status.ne2k_flags & HOLTEK_FDX)
		return FUNC0(dev);

	return -EOPNOTSUPP;
}