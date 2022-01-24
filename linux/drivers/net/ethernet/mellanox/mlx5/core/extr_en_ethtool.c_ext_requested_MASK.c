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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int FUNC0 (unsigned long const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(u8 autoneg, const unsigned long *adver, u32 speed)
{
	bool ext_link_mode = FUNC0(adver);
	bool ext_speed = FUNC1(speed);

	return  autoneg == AUTONEG_ENABLE ? ext_link_mode : ext_speed;
}