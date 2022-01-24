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
struct snd_pcm_hw_params {int dummy; } ;
struct em28xx {scalar_t__ disconnected; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct em28xx* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
					struct snd_pcm_hw_params *hw_params)
{
	int ret;
	struct em28xx *dev = FUNC6(substream);

	if (dev->disconnected)
		return -ENODEV;

	FUNC0("Setting capture parameters\n");

	ret = FUNC5(substream,
					   FUNC1(hw_params));
	if (ret < 0)
		return ret;
#if 0
	/*
	 * TODO: set up em28xx audio chip to deliver the correct audio format,
	 * current default is 48000hz multiplexed => 96000hz mono
	 * which shouldn't matter since analogue TV only supports mono
	 */
	unsigned int channels, rate, format;

	format = params_format(hw_params);
	rate = params_rate(hw_params);
	channels = params_channels(hw_params);
#endif

	return 0;
}