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
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct ivtv {int /*<<< orphan*/  hdl_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IVTV_REG_GPIO_DIR ; 
 int /*<<< orphan*/  IVTV_REG_GPIO_IN ; 
 int /*<<< orphan*/  IVTV_REG_GPIO_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ivtv* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd)
{
	struct ivtv *itv = FUNC2(sd);

	FUNC0("GPIO status: DIR=0x%04x OUT=0x%04x IN=0x%04x\n",
			FUNC1(IVTV_REG_GPIO_DIR), FUNC1(IVTV_REG_GPIO_OUT),
			FUNC1(IVTV_REG_GPIO_IN));
	FUNC3(&itv->hdl_gpio, sd->name);
	return 0;
}