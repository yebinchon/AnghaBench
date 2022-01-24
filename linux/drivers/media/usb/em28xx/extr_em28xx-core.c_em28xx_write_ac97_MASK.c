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
typedef  int /*<<< orphan*/  u16 ;
struct em28xx {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_R40_AC97LSB ; 
 int /*<<< orphan*/  EM28XX_R42_AC97ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct em28xx*) ; 
 int FUNC2 (struct em28xx*,int /*<<< orphan*/ ,int*,int) ; 

int FUNC3(struct em28xx *dev, u8 reg, u16 val)
{
	int ret;
	u8 addr = reg & 0x7f;
	__le16 value;

	value = FUNC0(val);

	ret = FUNC1(dev);
	if (ret < 0)
		return ret;

	ret = FUNC2(dev, EM28XX_R40_AC97LSB, (u8 *)&value, 2);
	if (ret < 0)
		return ret;

	ret = FUNC2(dev, EM28XX_R42_AC97ADDR, &addr, 1);
	if (ret < 0)
		return ret;

	return 0;
}