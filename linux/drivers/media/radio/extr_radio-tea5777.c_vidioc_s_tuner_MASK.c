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
typedef  scalar_t__ u32 ;
struct v4l2_tuner {scalar_t__ audmode; scalar_t__ index; } ;
struct radio_tea5777 {scalar_t__ audmode; scalar_t__ band; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAND_FM ; 
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_MODE_STEREO ; 
 int FUNC0 (struct radio_tea5777*) ; 
 struct radio_tea5777* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
					const struct v4l2_tuner *v)
{
	struct radio_tea5777 *tea = FUNC1(file);
	u32 orig_audmode = tea->audmode;

	if (v->index)
		return -EINVAL;

	tea->audmode = v->audmode;
	if (tea->audmode > V4L2_TUNER_MODE_STEREO)
		tea->audmode = V4L2_TUNER_MODE_STEREO;

	if (tea->audmode != orig_audmode && tea->band == BAND_FM)
		return FUNC0(tea);

	return 0;
}