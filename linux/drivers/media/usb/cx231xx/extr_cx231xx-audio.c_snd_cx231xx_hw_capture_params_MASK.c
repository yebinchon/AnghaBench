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
struct cx231xx {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC2 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC3 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC4 (struct snd_pcm_hw_params*) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct cx231xx* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
					 struct snd_pcm_hw_params *hw_params)
{
	struct cx231xx *dev = FUNC6(substream);
	int ret;

	FUNC0(dev->dev, "Setting capture parameters\n");

	ret = FUNC5(substream,
					   FUNC1(hw_params));
#if 0
	/* TODO: set up cx231xx audio chip to deliver the correct audio format,
	   current default is 48000hz multiplexed => 96000hz mono
	   which shouldn't matter since analogue TV only supports mono */
	unsigned int channels, rate, format;

	format = params_format(hw_params);
	rate = params_rate(hw_params);
	channels = params_channels(hw_params);
#endif

	return ret;
}