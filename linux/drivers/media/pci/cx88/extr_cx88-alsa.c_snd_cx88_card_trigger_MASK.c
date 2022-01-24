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
struct snd_pcm_substream {int dummy; } ;
struct cx88_audio_dev {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int FUNC0 (struct cx88_audio_dev*) ; 
 int FUNC1 (struct cx88_audio_dev*) ; 
 struct cx88_audio_dev* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream, int cmd)
{
	struct cx88_audio_dev *chip = FUNC2(substream);
	int err;

	/* Local interrupts are already disabled by ALSA */
	FUNC3(&chip->reg_lock);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		err = FUNC0(chip);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		err = FUNC1(chip);
		break;
	default:
		err =  -EINVAL;
		break;
	}

	FUNC4(&chip->reg_lock);

	return err;
}