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
struct snd_pcm {int /*<<< orphan*/  name; struct cx88_audio_dev* private_data; } ;
struct cx88_audio_dev {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  snd_cx88_pcm_ops ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC3(struct cx88_audio_dev *chip, int device,
			const char *name)
{
	int err;
	struct snd_pcm *pcm;

	err = FUNC0(chip->card, name, device, 0, 1, &pcm);
	if (err < 0)
		return err;
	pcm->private_data = chip;
	FUNC2(pcm->name, name, sizeof(pcm->name));
	FUNC1(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_cx88_pcm_ops);

	return 0;
}