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
struct rvin_dev {int /*<<< orphan*/  std; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rvin_dev*) ; 
 int /*<<< orphan*/  s_std ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video ; 
 struct rvin_dev* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct rvin_dev*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, v4l2_std_id a)
{
	struct rvin_dev *vin = FUNC2(file);
	int ret;

	ret = FUNC1(FUNC3(vin), video, s_std, a);
	if (ret < 0)
		return ret;

	vin->std = a;

	/* Changing the standard will change the width/height */
	return FUNC0(vin);
}