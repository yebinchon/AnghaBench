#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct cx88_core {int tvnorm; int /*<<< orphan*/  input; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CX88_VMUX_SVIDEO ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MO_FILTER_EVEN ; 
 int /*<<< orphan*/  MO_FILTER_ODD ; 
 int /*<<< orphan*/  MO_HACTIVE_EVEN ; 
 int /*<<< orphan*/  MO_HACTIVE_ODD ; 
 int /*<<< orphan*/  MO_HDELAY_EVEN ; 
 int /*<<< orphan*/  MO_HDELAY_ODD ; 
 int /*<<< orphan*/  MO_HSCALE_EVEN ; 
 int /*<<< orphan*/  MO_HSCALE_ODD ; 
 int /*<<< orphan*/  MO_VACTIVE_EVEN ; 
 int /*<<< orphan*/  MO_VACTIVE_ODD ; 
 int /*<<< orphan*/  MO_VDELAY_EVEN ; 
 int /*<<< orphan*/  MO_VDELAY_ODD ; 
 int /*<<< orphan*/  MO_VSCALE_EVEN ; 
 int /*<<< orphan*/  MO_VSCALE_ODD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int V4L2_FIELD_INTERLACED ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 scalar_t__ nocomb ; 
 unsigned int FUNC7 (int) ; 
 unsigned int FUNC8 (int) ; 
 unsigned int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

int FUNC12(struct cx88_core *core, unsigned int width,
		   unsigned int height, enum v4l2_field field)
{
	unsigned int swidth  = FUNC9(core->tvnorm);
	unsigned int sheight = FUNC8(core->tvnorm);
	u32 value;

	FUNC6(1, "set_scale: %dx%d [%s%s,%s]\n", width, height,
		FUNC3(field)    ? "T" : "",
		FUNC2(field) ? "B" : "",
		FUNC11(core->tvnorm));
	if (!FUNC1(field))
		height *= 2;

	// recalc H delay and scale registers
	value = (width * FUNC7(core->tvnorm)) / swidth;
	value &= 0x3fe;
	FUNC5(MO_HDELAY_EVEN,  value);
	FUNC5(MO_HDELAY_ODD,   value);
	FUNC6(1, "set_scale: hdelay  0x%04x (width %d)\n", value, swidth);

	value = (swidth * 4096 / width) - 4096;
	FUNC5(MO_HSCALE_EVEN,  value);
	FUNC5(MO_HSCALE_ODD,   value);
	FUNC6(1, "set_scale: hscale  0x%04x\n", value);

	FUNC5(MO_HACTIVE_EVEN, width);
	FUNC5(MO_HACTIVE_ODD,  width);
	FUNC6(1, "set_scale: hactive 0x%04x\n", width);

	// recalc V scale Register (delay is constant)
	FUNC5(MO_VDELAY_EVEN, FUNC10(core->tvnorm));
	FUNC5(MO_VDELAY_ODD,  FUNC10(core->tvnorm));
	FUNC6(1, "set_scale: vdelay  0x%04x\n", FUNC10(core->tvnorm));

	value = (0x10000 - (sheight * 512 / height - 512)) & 0x1fff;
	FUNC5(MO_VSCALE_EVEN,  value);
	FUNC5(MO_VSCALE_ODD,   value);
	FUNC6(1, "set_scale: vscale  0x%04x\n", value);

	FUNC5(MO_VACTIVE_EVEN, sheight);
	FUNC5(MO_VACTIVE_ODD,  sheight);
	FUNC6(1, "set_scale: vactive 0x%04x\n", sheight);

	// setup filters
	value = 0;
	value |= (1 << 19);        // CFILT (default)
	if (core->tvnorm & V4L2_STD_SECAM) {
		value |= (1 << 15);
		value |= (1 << 16);
	}
	if (FUNC0(core->input).type == CX88_VMUX_SVIDEO)
		value |= (1 << 13) | (1 << 5);
	if (field == V4L2_FIELD_INTERLACED)
		value |= (1 << 3); // VINT (interlaced vertical scaling)
	if (width < 385)
		value |= (1 << 0); // 3-tap interpolation
	if (width < 193)
		value |= (1 << 1); // 5-tap interpolation
	if (nocomb)
		value |= (3 << 5); // disable comb filter

	FUNC4(MO_FILTER_EVEN,  0x7ffc7f, value); /* preserve PEAKEN, PSEL */
	FUNC4(MO_FILTER_ODD,   0x7ffc7f, value);
	FUNC6(1, "set_scale: filter  0x%04x\n", value);

	return 0;
}