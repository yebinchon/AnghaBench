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
typedef  int u8 ;
struct tm6000_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TM6010_REQ08_R0A_A_I2S_MOD ; 
 int /*<<< orphan*/  FUNC0 (struct tm6000_core*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct tm6000_core *dev, u8 mute)
{
	u8 mute_reg = 0;

	if (mute)
		mute_reg = 0x08;

	FUNC0(dev, TM6010_REQ08_R0A_A_I2S_MOD, mute_reg, 0x08);
}