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
typedef  int u16 ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 scalar_t__ PHY_CORE_0 ; 
 int FUNC0 (struct brcms_phy*,int) ; 

__attribute__((used)) static u8 FUNC1(struct brcms_phy *pi, u8 core)
{
	u16 tmp;
	tmp = FUNC0(pi, ((core == PHY_CORE_0) ? 0x1ed : 0x1ee));

	tmp = (tmp & (0x7f << 8)) >> 8;
	return (u8) tmp;
}