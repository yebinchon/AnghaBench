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
struct v4l2_subdev {int dummy; } ;
struct imx214 {int streaming; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct imx214*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct imx214* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *subdev, int enable)
{
	struct imx214 *imx214 = FUNC4(subdev);
	int ret;

	if (imx214->streaming == enable)
		return 0;

	if (enable) {
		ret = FUNC1(imx214->dev);
		if (ret < 0) {
			FUNC3(imx214->dev);
			return ret;
		}

		ret = FUNC0(imx214);
		if (ret < 0)
			goto err_rpm_put;
	} else {
		ret = FUNC0(imx214);
		if (ret < 0)
			goto err_rpm_put;
		FUNC2(imx214->dev);
	}

	imx214->streaming = enable;
	return 0;

err_rpm_put:
	FUNC2(imx214->dev);
	return ret;
}