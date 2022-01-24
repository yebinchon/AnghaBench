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
struct file {int dummy; } ;
struct TYPE_2__ {struct v4l2_subdev* subdev; } ;
struct atmel_isi {int /*<<< orphan*/  lock; TYPE_1__ entity; } ;

/* Variables and functions */
 int FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_power ; 
 int FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_isi* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct atmel_isi *isi = FUNC5(file);
	struct v4l2_subdev *sd = isi->entity.subdev;
	bool fh_singular;
	int ret;

	FUNC1(&isi->lock);

	fh_singular = FUNC3(file);

	ret = FUNC0(file, NULL);

	if (fh_singular)
		FUNC4(sd, core, s_power, 0);

	FUNC2(&isi->lock);

	return ret;
}