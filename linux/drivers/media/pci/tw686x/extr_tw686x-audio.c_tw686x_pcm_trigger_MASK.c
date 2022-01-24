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
struct tw686x_dev {int audio_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  dma_delay_timer; struct tw686x_audio_channel* audio_channels; } ;
struct tw686x_audio_channel {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** curr_bufs; scalar_t__ ch; } ;
struct snd_pcm_substream {size_t number; } ;

/* Variables and functions */
 scalar_t__ AUDIO_CHANNEL_OFFSET ; 
 int EINVAL ; 
 int EIO ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 struct tw686x_dev* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct tw686x_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct tw686x_dev*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *ss, int cmd)
{
	struct tw686x_dev *dev = FUNC2(ss);
	struct tw686x_audio_channel *ac = &dev->audio_channels[ss->number];
	unsigned long flags;
	int err = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		if (ac->curr_bufs[0] && ac->curr_bufs[1]) {
			FUNC3(&dev->lock, flags);
			dev->audio_enabled = 1;
			FUNC6(dev,
				AUDIO_CHANNEL_OFFSET + ac->ch);
			FUNC4(&dev->lock, flags);

			FUNC0(&dev->dma_delay_timer,
				  jiffies + FUNC1(100));
		} else {
			err = -EIO;
		}
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC3(&dev->lock, flags);
		dev->audio_enabled = 0;
		FUNC5(dev, AUDIO_CHANNEL_OFFSET + ac->ch);
		FUNC4(&dev->lock, flags);

		FUNC3(&ac->lock, flags);
		ac->curr_bufs[0] = NULL;
		ac->curr_bufs[1] = NULL;
		FUNC4(&ac->lock, flags);
		break;
	default:
		err = -EINVAL;
	}
	return err;
}