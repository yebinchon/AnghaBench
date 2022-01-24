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
struct video_i2c_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  v4l2_dev; } ;
struct video_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct video_i2c_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct video_i2c_data* FUNC4 (struct video_device*) ; 

__attribute__((used)) static void FUNC5(struct video_device *vdev)
{
	struct video_i2c_data *data = FUNC4(vdev);

	FUNC3(&data->v4l2_dev);
	FUNC1(&data->lock);
	FUNC1(&data->queue_lock);
	FUNC2(data->regmap);
	FUNC0(data);
}