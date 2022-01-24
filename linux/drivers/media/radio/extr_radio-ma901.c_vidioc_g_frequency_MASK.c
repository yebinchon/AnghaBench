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
struct v4l2_frequency {scalar_t__ tuner; int /*<<< orphan*/  frequency; } ;
struct ma901radio_device {int /*<<< orphan*/  curfreq; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ma901radio_device* FUNC0 (struct file*) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
				struct v4l2_frequency *f)
{
	struct ma901radio_device *radio = FUNC0(file);

	if (f->tuner != 0)
		return -EINVAL;
	f->frequency = radio->curfreq;

	return 0;
}