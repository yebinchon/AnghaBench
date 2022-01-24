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
struct snd_ivtv_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ivtv_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ivtv_card*) ; 
 int FUNC2 (struct snd_pcm_substream*,unsigned int,void*) ; 
 struct snd_ivtv_card* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
		     unsigned int cmd, void *arg)
{
	struct snd_ivtv_card *itvsc = FUNC3(substream);
	int ret;

	FUNC0(itvsc);
	ret = FUNC2(substream, cmd, arg);
	FUNC1(itvsc);
	return ret;
}