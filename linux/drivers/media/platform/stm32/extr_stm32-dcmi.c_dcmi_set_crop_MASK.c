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
struct TYPE_2__ {int height; int width; int top; int left; } ;
struct stm32_dcmi {int /*<<< orphan*/  regs; TYPE_1__ crop; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_CROP ; 
 int /*<<< orphan*/  DCMI_CR ; 
 int /*<<< orphan*/  DCMI_CWSIZE ; 
 int /*<<< orphan*/  DCMI_CWSTRT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct stm32_dcmi *dcmi)
{
	u32 size, start;

	/* Crop resolution */
	size = ((dcmi->crop.height - 1) << 16) |
		((dcmi->crop.width << 1) - 1);
	FUNC2(dcmi->regs, DCMI_CWSIZE, size);

	/* Crop start point */
	start = ((dcmi->crop.top) << 16) |
		 ((dcmi->crop.left << 1));
	FUNC2(dcmi->regs, DCMI_CWSTRT, start);

	FUNC0(dcmi->dev, "Cropping to %ux%u@%u:%u\n",
		dcmi->crop.width, dcmi->crop.height,
		dcmi->crop.left, dcmi->crop.top);

	/* Enable crop */
	FUNC1(dcmi->regs, DCMI_CR, CR_CROP);
}