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
struct snd_tea575x {scalar_t__ val; scalar_t__ band; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAND_AM ; 
 int EINVAL ; 
 scalar_t__ TEA575X_BIT_MONO ; 
 scalar_t__ V4L2_TUNER_MODE_MONO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_tea575x*) ; 
 struct snd_tea575x* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
					const struct v4l2_tuner *v)
{
	struct snd_tea575x *tea = FUNC1(file);
	u32 orig_val = tea->val;

	if (v->index)
		return -EINVAL;
	tea->val &= ~TEA575X_BIT_MONO;
	if (v->audmode == V4L2_TUNER_MODE_MONO)
		tea->val |= TEA575X_BIT_MONO;
	/* Only apply changes if currently tuning FM */
	if (tea->band != BAND_AM && tea->val != orig_val)
		FUNC0(tea);

	return 0;
}