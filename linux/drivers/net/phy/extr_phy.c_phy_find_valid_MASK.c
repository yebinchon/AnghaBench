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
struct phy_setting {int dummy; } ;

/* Variables and functions */
 struct phy_setting const* FUNC0 (int,int,unsigned long*,int) ; 

__attribute__((used)) static const struct phy_setting *
FUNC1(int speed, int duplex, unsigned long *supported)
{
	return FUNC0(speed, duplex, supported, false);
}