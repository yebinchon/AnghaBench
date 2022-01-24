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
typedef  int /*<<< orphan*/  val ;
typedef  int u8 ;
struct em28xx {int (* em28xx_read_reg_req_len ) (struct em28xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ;} ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_R40_AC97LSB ; 
 int /*<<< orphan*/  EM28XX_R42_AC97ADDR ; 
 int FUNC0 (struct em28xx*) ; 
 int FUNC1 (struct em28xx*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct em28xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

int FUNC4(struct em28xx *dev, u8 reg)
{
	int ret;
	u8 addr = (reg & 0x7f) | 0x80;
	__le16 val;

	ret = FUNC0(dev);
	if (ret < 0)
		return ret;

	ret = FUNC1(dev, EM28XX_R42_AC97ADDR, &addr, 1);
	if (ret < 0)
		return ret;

	ret = dev->em28xx_read_reg_req_len(dev, 0, EM28XX_R40_AC97LSB,
					   (u8 *)&val, sizeof(val));

	if (ret < 0)
		return ret;
	return FUNC2(val);
}