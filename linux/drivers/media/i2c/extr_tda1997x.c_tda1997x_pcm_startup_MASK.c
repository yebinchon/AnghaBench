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
struct tda1997x_state {int audio_samplerate; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 struct tda1997x_state* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				struct snd_soc_dai *dai)
{
	struct tda1997x_state *state = FUNC3(dai);
	struct snd_soc_component *component = dai->component;
	struct snd_pcm_runtime *rtd = substream->runtime;
	int rate, err;

	rate = state->audio_samplerate;
	err = FUNC2(rtd, SNDRV_PCM_HW_PARAM_RATE,
					   rate, rate);
	if (err < 0) {
		FUNC0(component->dev, "failed to constrain samplerate to %dHz\n",
			rate);
		return err;
	}
	FUNC1(component->dev, "set samplerate constraint to %dHz\n", rate);

	return 0;
}