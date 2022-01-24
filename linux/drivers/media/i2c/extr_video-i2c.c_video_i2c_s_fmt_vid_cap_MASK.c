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
struct video_i2c_data {int /*<<< orphan*/  vb_vidq; } ;
struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct video_i2c_data* FUNC1 (struct file*) ; 
 int FUNC2 (struct file*,void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
				     struct v4l2_format *fmt)
{
	struct video_i2c_data *data = FUNC1(file);

	if (FUNC0(&data->vb_vidq))
		return -EBUSY;

	return FUNC2(file, fh, fmt);
}