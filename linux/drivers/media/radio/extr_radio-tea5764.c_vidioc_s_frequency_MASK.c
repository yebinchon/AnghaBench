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
struct v4l2_frequency {unsigned int frequency; scalar_t__ tuner; scalar_t__ type; } ;
struct tea5764_device {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FREQ_MAX ; 
 int FREQ_MIN ; 
 int FREQ_MUL ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 unsigned int FUNC0 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tea5764_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tea5764_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct tea5764_device*,unsigned int) ; 
 struct tea5764_device* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
				const struct v4l2_frequency *f)
{
	struct tea5764_device *radio = FUNC4(file);
	unsigned freq = f->frequency;

	if (f->tuner != 0 || f->type != V4L2_TUNER_RADIO)
		return -EINVAL;
	if (freq == 0) {
		/* We special case this as a power down control. */
		FUNC1(radio);
		/* Yes, that's what is returned in this case. This
		   whole special case is non-compliant and should really
		   be replaced with something better, but changing this
		   might well break code that depends on this behavior.
		   So we keep it as-is. */
		return -EINVAL;
	}
	freq = FUNC0(freq, FREQ_MIN * FREQ_MUL, FREQ_MAX * FREQ_MUL);
	FUNC2(radio);
	FUNC3(radio, (freq * 125) / 2);
	return 0;
}