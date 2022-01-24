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
struct via_camera {void* reset_gpio; void* power_gpio; TYPE_1__* platdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*,char*) ; 
 void* FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct via_camera *cam)
{
	int ret;

	cam->power_gpio = FUNC5("VGPIO3");
	cam->reset_gpio = FUNC5("VGPIO2");
	if (!FUNC3(cam->power_gpio) || !FUNC3(cam->reset_gpio)) {
		FUNC0(&cam->platdev->dev, "Unable to find GPIO lines\n");
		return -EINVAL;
	}
	ret = FUNC4(cam->power_gpio, "viafb-camera");
	if (ret) {
		FUNC0(&cam->platdev->dev, "Unable to request power GPIO\n");
		return ret;
	}
	ret = FUNC4(cam->reset_gpio, "viafb-camera");
	if (ret) {
		FUNC0(&cam->platdev->dev, "Unable to request reset GPIO\n");
		FUNC2(cam->power_gpio);
		return ret;
	}
	FUNC1(cam->power_gpio, 0);
	FUNC1(cam->reset_gpio, 0);
	return 0;
}