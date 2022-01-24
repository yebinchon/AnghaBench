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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct vfe_device {scalar_t__ base; } ;
struct v4l2_pix_format_mplane {int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_pix_format_mplane*,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct vfe_device *vfe, u32 wm,
			      struct v4l2_pix_format_mplane *pix,
			      u8 plane, u32 enable)
{
	u32 reg;

	if (enable) {
		u16 width = 0, height = 0, bytesperline = 0, wpl;

		FUNC2(pix, plane, &width, &height, &bytesperline);

		wpl = FUNC4(pix->pixelformat, width);

		reg = height - 1;
		reg |= ((wpl + 3) / 4 - 1) << 16;

		FUNC5(reg, vfe->base +
			       FUNC1(wm));

		wpl = FUNC3(bytesperline);

		reg = 0x3;
		reg |= (height - 1) << 2;
		reg |= ((wpl + 1) / 2) << 16;

		FUNC5(reg, vfe->base +
			       FUNC0(wm));
	} else {
		FUNC5(0, vfe->base +
			       FUNC1(wm));
		FUNC5(0, vfe->base +
			       FUNC0(wm));
	}
}