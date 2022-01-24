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
struct snd_cobalt_card {scalar_t__ pb_pos; int /*<<< orphan*/  pb_count; int /*<<< orphan*/  pb_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 struct snd_cobalt_card* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_cobalt_card *cobsc = FUNC2(substream);

	cobsc->pb_size = FUNC0(substream);
	cobsc->pb_count = FUNC1(substream);
	cobsc->pb_pos = 0;

	return 0;
}