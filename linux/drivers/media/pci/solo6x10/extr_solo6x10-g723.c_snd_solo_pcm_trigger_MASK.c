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
struct solo_snd_pcm {int on; int /*<<< orphan*/  lock; struct solo_dev* solo_dev; } ;
struct solo_dev {int /*<<< orphan*/  snd_users; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  SOLO_IRQ_G723 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct solo_snd_pcm* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *ss, int cmd)
{
	struct solo_snd_pcm *solo_pcm = FUNC2(ss);
	struct solo_dev *solo_dev = solo_pcm->solo_dev;
	int ret = 0;

	FUNC5(&solo_pcm->lock);

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		if (solo_pcm->on == 0) {
			/* If this is the first user, switch on interrupts */
			if (FUNC1(&solo_dev->snd_users) == 1)
				FUNC4(solo_dev, SOLO_IRQ_G723);
			solo_pcm->on = 1;
		}
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		if (solo_pcm->on) {
			/* If this was our last user, switch them off */
			if (FUNC0(&solo_dev->snd_users) == 0)
				FUNC3(solo_dev, SOLO_IRQ_G723);
			solo_pcm->on = 0;
		}
		break;
	default:
		ret = -EINVAL;
	}

	FUNC6(&solo_pcm->lock);

	return ret;
}