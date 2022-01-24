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
struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct snd_tea575x {size_t band; int /*<<< orphan*/  freq; scalar_t__ tea5759; scalar_t__ has_am; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rangehigh; int /*<<< orphan*/  rangelow; } ;

/* Variables and functions */
 size_t BAND_AM ; 
 size_t BAND_FM ; 
 size_t BAND_FM_JAPAN ; 
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 TYPE_1__* bands ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_tea575x*) ; 
 int /*<<< orphan*/  u32 ; 
 struct snd_tea575x* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
					const struct v4l2_frequency *f)
{
	struct snd_tea575x *tea = FUNC2(file);

	if (f->tuner != 0 || f->type != V4L2_TUNER_RADIO)
		return -EINVAL;

	if (tea->has_am && f->frequency < (20000 * 16))
		tea->band = BAND_AM;
	else if (tea->tea5759)
		tea->band = BAND_FM_JAPAN;
	else
		tea->band = BAND_FM;

	tea->freq = FUNC0(u32, f->frequency, bands[tea->band].rangelow,
					bands[tea->band].rangehigh);
	FUNC1(tea);
	return 0;
}