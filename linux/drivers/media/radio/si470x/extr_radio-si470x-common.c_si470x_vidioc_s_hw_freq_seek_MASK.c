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
struct v4l2_hw_freq_seek {scalar_t__ tuner; } ;
struct si470x_device {int dummy; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int EWOULDBLOCK ; 
 int O_NONBLOCK ; 
 int FUNC0 (struct si470x_device*,struct v4l2_hw_freq_seek const*) ; 
 struct si470x_device* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
		const struct v4l2_hw_freq_seek *seek)
{
	struct si470x_device *radio = FUNC1(file);

	if (seek->tuner != 0)
		return -EINVAL;

	if (file->f_flags & O_NONBLOCK)
		return -EWOULDBLOCK;

	return FUNC0(radio, seek);
}