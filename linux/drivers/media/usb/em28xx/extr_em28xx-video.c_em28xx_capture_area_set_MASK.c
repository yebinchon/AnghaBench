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
typedef  int u16 ;
struct em28xx {scalar_t__ is_em25xx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_R1B_OFLOW ; 
 int /*<<< orphan*/  EM28XX_R1C_HSTART ; 
 int /*<<< orphan*/  EM28XX_R1D_VSTART ; 
 int /*<<< orphan*/  EM28XX_R1E_CWIDTH ; 
 int /*<<< orphan*/  EM28XX_R1F_CHEIGHT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC3(struct em28xx *dev, u8 hstart, u8 vstart,
				    u16 width, u16 height)
{
	u8 cwidth = width >> 2;
	u8 cheight = height >> 2;
	u8 overflow = (height >> 9 & 0x02) | (width >> 10 & 0x01);
	/* NOTE: size limit: 2047x1023 = 2MPix */

	FUNC0("capture area set to (%d,%d): %dx%d\n",
			hstart, vstart,
		       ((overflow & 2) << 9 | cwidth << 2),
		       ((overflow & 1) << 10 | cheight << 2));

	FUNC2(dev, EM28XX_R1C_HSTART, &hstart, 1);
	FUNC2(dev, EM28XX_R1D_VSTART, &vstart, 1);
	FUNC2(dev, EM28XX_R1E_CWIDTH, &cwidth, 1);
	FUNC2(dev, EM28XX_R1F_CHEIGHT, &cheight, 1);
	FUNC2(dev, EM28XX_R1B_OFLOW, &overflow, 1);

	/* FIXME: function/meaning of these registers ? */
	/* FIXME: align width+height to multiples of 4 ?! */
	if (dev->is_em25xx) {
		FUNC1(dev, 0x34, width >> 4);
		FUNC1(dev, 0x35, height >> 4);
	}
}