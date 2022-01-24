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
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct video_mux {struct v4l2_subdev subdev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct video_mux* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct video_mux *vmux = FUNC1(pdev);
	struct v4l2_subdev *sd = &vmux->subdev;

	FUNC2(sd);
	FUNC0(&sd->entity);

	return 0;
}