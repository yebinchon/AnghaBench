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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct go7007 {int /*<<< orphan*/ * audio_deliver; } ;
struct TYPE_2__ {scalar_t__ dma_bytes; int /*<<< orphan*/  dma_area; } ;

/* Variables and functions */
 struct go7007* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct go7007 *go = FUNC0(substream);

	go->audio_deliver = NULL;
	if (substream->runtime->dma_bytes > 0)
		FUNC1(substream->runtime->dma_area);
	substream->runtime->dma_bytes = 0;
	return 0;
}