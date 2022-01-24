#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm {int /*<<< orphan*/  name; scalar_t__ info_flags; TYPE_1__* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  card; } ;
typedef  TYPE_1__ snd_card_saa7134_t ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  snd_card_saa7134_capture_ops ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(snd_card_saa7134_t *saa7134, int device)
{
	struct snd_pcm *pcm;
	int err;

	if ((err = FUNC0(saa7134->card, "SAA7134 PCM", device, 0, 1, &pcm)) < 0)
		return err;
	FUNC1(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_card_saa7134_capture_ops);
	pcm->private_data = saa7134;
	pcm->info_flags = 0;
	FUNC2(pcm->name, "SAA7134 PCM", sizeof(pcm->name));
	return 0;
}