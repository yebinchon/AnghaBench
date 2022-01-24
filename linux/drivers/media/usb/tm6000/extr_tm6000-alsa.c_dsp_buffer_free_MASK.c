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
struct snd_tm6000_card {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {scalar_t__ dma_bytes; int /*<<< orphan*/ * dma_area; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct snd_tm6000_card* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_tm6000_card *chip = FUNC1(substream);

	FUNC0(2, "Freeing buffer\n");

	FUNC2(substream->runtime->dma_area);
	substream->runtime->dma_area = NULL;
	substream->runtime->dma_bytes = 0;
}