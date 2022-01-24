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
struct solo_snd_pcm {struct solo_dev* solo_dev; } ;
struct solo_dev {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
typedef  int snd_pcm_uframes_t ;

/* Variables and functions */
 int G723_FRAMES_PER_PAGE ; 
 int /*<<< orphan*/  SOLO_AUDIO_STA ; 
 struct solo_snd_pcm* FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct solo_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC2(struct snd_pcm_substream *ss)
{
	struct solo_snd_pcm *solo_pcm = FUNC0(ss);
	struct solo_dev *solo_dev = solo_pcm->solo_dev;
	snd_pcm_uframes_t idx = FUNC1(solo_dev, SOLO_AUDIO_STA) & 0x1f;

	return idx * G723_FRAMES_PER_PAGE;
}