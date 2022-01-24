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

/* Variables and functions */
 struct net_device* FUNC0 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device const*) ; 

__attribute__((used)) static struct net_device *
FUNC2(const struct net_device *vlan_dev,
			 u16 *p_vid)
{
	*p_vid = FUNC1(vlan_dev);
	return FUNC0(vlan_dev);
}