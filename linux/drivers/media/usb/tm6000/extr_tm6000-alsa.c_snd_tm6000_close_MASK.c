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
struct tm6000_core {int /*<<< orphan*/  wq_trigger; int /*<<< orphan*/  stream_started; } ;
struct snd_tm6000_card {struct tm6000_core* core; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_tm6000_card* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_tm6000_card *chip = FUNC3(substream);
	struct tm6000_core *core = chip->core;

	if (FUNC0(&core->stream_started) > 0) {
		FUNC1(&core->stream_started, 0);
		FUNC2(&core->wq_trigger);
	}

	return 0;
}