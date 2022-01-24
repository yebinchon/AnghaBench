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
struct tw686x_dev {struct tw686x_audio_channel* audio_channels; } ;
struct tw686x_audio_channel {int /*<<< orphan*/  ptr; } ;
struct snd_pcm_substream {size_t number; int /*<<< orphan*/  runtime; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tw686x_dev* FUNC1 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC2(struct snd_pcm_substream *ss)
{
	struct tw686x_dev *dev = FUNC1(ss);
	struct tw686x_audio_channel *ac = &dev->audio_channels[ss->number];

	return FUNC0(ss->runtime, ac->ptr);
}