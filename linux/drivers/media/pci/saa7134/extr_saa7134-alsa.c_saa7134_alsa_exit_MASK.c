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

/* Variables and functions */
 int SNDRV_CARDS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * saa7134_dmasound_exit ; 
 int /*<<< orphan*/ * saa7134_dmasound_init ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__* snd_saa7134_cards ; 

__attribute__((used)) static void FUNC2(void)
{
	int idx;

	for (idx = 0; idx < SNDRV_CARDS; idx++) {
		if (snd_saa7134_cards[idx])
			FUNC1(snd_saa7134_cards[idx]);
	}

	saa7134_dmasound_init = NULL;
	saa7134_dmasound_exit = NULL;
	FUNC0("saa7134 ALSA driver for DMA sound unloaded\n");

	return;
}