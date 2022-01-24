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
struct snd_cobalt_card {int /*<<< orphan*/  sc; } ;
struct cobalt_stream {struct snd_cobalt_card* alsa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct cobalt_stream *s)
{
	struct snd_cobalt_card *cobsc = s->alsa;

	if (cobsc)
		FUNC0(cobsc->sc);
	s->alsa = NULL;
}