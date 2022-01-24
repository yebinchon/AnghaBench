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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct cobalt_stream* private_data; int /*<<< orphan*/  hw; } ;
struct snd_cobalt_card {int alsa_record_cnt; struct snd_pcm_substream* capture_pcm_substream; struct cobalt_stream* s; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct cobalt_stream {TYPE_1__ vdev; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  alsa_fnc ; 
 int /*<<< orphan*/  snd_cobalt_hdmi_capture ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 struct snd_cobalt_card* FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cobalt_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_cobalt_card *cobsc = FUNC1(substream);
	struct cobalt_stream *s = cobsc->s;

	runtime->hw = snd_cobalt_hdmi_capture;
	FUNC0(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
	cobsc->capture_pcm_substream = substream;
	runtime->private_data = s;
	cobsc->alsa_record_cnt++;
	if (cobsc->alsa_record_cnt == 1) {
		int rc;

		rc = FUNC2(&s->q, alsa_fnc, s, s->vdev.name);
		if (rc) {
			cobsc->alsa_record_cnt--;
			return rc;
		}
	}
	return 0;
}