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
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*,int,int,int) ; 
 int FUNC1 (struct brcms_phy*,int) ; 

__attribute__((used)) static void FUNC2(struct brcms_phy *pi, u16 dac_gain)
{
	u16 dac_ctrl;

	dac_ctrl = (FUNC1(pi, 0x439) >> 0);
	dac_ctrl = dac_ctrl & 0xc7f;
	dac_ctrl = dac_ctrl | (dac_gain << 7);
	FUNC0(pi, 0x439, (0xfff << 0), (dac_ctrl) << 0);

}