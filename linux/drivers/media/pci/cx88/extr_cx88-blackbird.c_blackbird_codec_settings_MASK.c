#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cx88_core {int tvnorm; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct cx8802_dev {TYPE_1__ cxhdl; struct cx88_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_ENC_SET_FRAME_SIZE ; 
 int V4L2_STD_625_50 ; 
 int /*<<< orphan*/  FUNC0 (struct cx8802_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct cx8802_dev *dev)
{
	struct cx88_core *core = dev->core;

	/* assign frame size */
	FUNC0(dev, CX2341X_ENC_SET_FRAME_SIZE, 2, 0,
			  core->height, core->width);

	dev->cxhdl.width = core->width;
	dev->cxhdl.height = core->height;
	FUNC1(&dev->cxhdl,
				 dev->core->tvnorm & V4L2_STD_625_50);
	FUNC2(&dev->cxhdl);
}