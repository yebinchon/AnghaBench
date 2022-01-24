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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct smiapp_sensor {int /*<<< orphan*/  image_start; } ;

/* Variables and functions */
 struct smiapp_sensor* FUNC0 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC1(struct v4l2_subdev *subdev, u32 *lines)
{
	struct smiapp_sensor *sensor = FUNC0(subdev);

	*lines = sensor->image_start;

	return 0;
}