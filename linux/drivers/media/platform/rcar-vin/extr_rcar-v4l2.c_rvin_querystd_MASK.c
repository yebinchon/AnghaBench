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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct rvin_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  querystd ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 
 struct rvin_dev* FUNC1 (struct file*) ; 
 struct v4l2_subdev* FUNC2 (struct rvin_dev*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, v4l2_std_id *a)
{
	struct rvin_dev *vin = FUNC1(file);
	struct v4l2_subdev *sd = FUNC2(vin);

	return FUNC0(sd, video, querystd, a);
}