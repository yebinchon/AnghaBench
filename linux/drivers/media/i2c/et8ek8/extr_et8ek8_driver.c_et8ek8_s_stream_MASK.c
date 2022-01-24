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
struct et8ek8_sensor {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct et8ek8_sensor*) ; 
 int FUNC1 (struct et8ek8_sensor*) ; 
 int FUNC2 (struct et8ek8_sensor*) ; 
 struct et8ek8_sensor* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *subdev, int streaming)
{
	struct et8ek8_sensor *sensor = FUNC3(subdev);
	int ret;

	if (!streaming)
		return FUNC1(sensor);

	ret = FUNC0(sensor);
	if (ret < 0)
		return ret;

	return FUNC2(sensor);
}