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
struct v4l2_audio {scalar_t__ index; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 struct v4l2_audio msp3400_v4l2_audio ; 

__attribute__((used)) static int FUNC1(struct file *file, void *fh, struct v4l2_audio *a)
{
	FUNC0(2, "VIDIOC_G_AUDIO: %d\n", a->index);
	if (a->index != 0)
		return -EINVAL;
	*a = msp3400_v4l2_audio;
	return 0;
}