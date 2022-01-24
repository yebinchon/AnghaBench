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
struct v4l2_subdev {int dummy; } ;
struct smiapp_sensor {unsigned int ssds_used; TYPE_1__* ssds; } ;
struct TYPE_2__ {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 struct smiapp_sensor* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct v4l2_subdev *subdev)
{
	struct smiapp_sensor *sensor = FUNC0(subdev);
	unsigned int i;

	for (i = 1; i < sensor->ssds_used; i++)
		FUNC1(&sensor->ssds[i].sd);
}