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
struct snd_ivtv_card {int /*<<< orphan*/  slock; int /*<<< orphan*/  hwptr_done_capture; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 struct snd_ivtv_card* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static
snd_pcm_uframes_t FUNC3(struct snd_pcm_substream *substream)
{
	unsigned long flags;
	snd_pcm_uframes_t hwptr_done;
	struct snd_ivtv_card *itvsc = FUNC0(substream);

	FUNC1(&itvsc->slock, flags);
	hwptr_done = itvsc->hwptr_done_capture;
	FUNC2(&itvsc->slock, flags);

	return hwptr_done;
}