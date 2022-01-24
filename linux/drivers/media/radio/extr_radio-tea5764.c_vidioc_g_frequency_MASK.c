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
struct v4l2_frequency {scalar_t__ tuner; int frequency; int /*<<< orphan*/  type; } ;
struct tea5764_regs {int tnctrl; } ;
struct tea5764_device {struct tea5764_regs regs; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int TEA5764_TNCTRL_PUPD0 ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int FUNC0 (struct tea5764_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct tea5764_device*) ; 
 struct tea5764_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				struct v4l2_frequency *f)
{
	struct tea5764_device *radio = FUNC2(file);
	struct tea5764_regs *r = &radio->regs;

	if (f->tuner != 0)
		return -EINVAL;
	FUNC1(radio);
	f->type = V4L2_TUNER_RADIO;
	if (r->tnctrl & TEA5764_TNCTRL_PUPD0)
		f->frequency = (FUNC0(radio) * 2) / 125;
	else
		f->frequency = 0;

	return 0;
}