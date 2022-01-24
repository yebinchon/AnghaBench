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
struct usbtv {struct snd_pcm_substream* snd_substream; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 struct usbtv* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  snd_usbtv_digital_hw ; 

__attribute__((used)) static int FUNC1(struct snd_pcm_substream *substream)
{
	struct usbtv *chip = FUNC0(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	chip->snd_substream = substream;
	runtime->hw = snd_usbtv_digital_hw;

	return 0;
}