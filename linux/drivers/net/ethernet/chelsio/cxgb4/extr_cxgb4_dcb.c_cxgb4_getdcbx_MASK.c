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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  supported; } ;
struct port_info {TYPE_1__ dcb; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct port_info* FUNC0 (struct net_device*) ; 

__attribute__((used)) static u8 FUNC1(struct net_device *dev)
{
	struct port_info *pi = FUNC0(dev);

	/* This is already set by cxgb4_set_dcb_caps, so just return it */
	return pi->dcb.supported;
}