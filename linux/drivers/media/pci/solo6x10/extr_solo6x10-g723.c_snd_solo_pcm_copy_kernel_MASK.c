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
struct solo_snd_pcm {int /*<<< orphan*/  g723_buf; int /*<<< orphan*/  g723_dma; struct solo_dev* solo_dev; } ;
struct solo_dev {int dummy; } ;
struct snd_pcm_substream {int number; } ;

/* Variables and functions */
 unsigned long G723_FRAMES_PER_PAGE ; 
 int G723_PERIOD_BLOCK ; 
 int G723_PERIOD_BYTES ; 
 scalar_t__ FUNC0 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 struct solo_snd_pcm* FUNC2 (struct snd_pcm_substream*) ; 
 int FUNC3 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *ss, int channel,
				    unsigned long pos, void *dst,
				    unsigned long count)
{
	struct solo_snd_pcm *solo_pcm = FUNC2(ss);
	struct solo_dev *solo_dev = solo_pcm->solo_dev;
	int err, i;

	for (i = 0; i < (count / G723_FRAMES_PER_PAGE); i++) {
		int page = (pos / G723_FRAMES_PER_PAGE) + i;

		err = FUNC3(solo_dev, 0, solo_pcm->g723_dma,
				     FUNC0(solo_dev) +
				     (page * G723_PERIOD_BLOCK) +
				     (ss->number * G723_PERIOD_BYTES),
				     G723_PERIOD_BYTES, 0, 0);
		if (err)
			return err;

		FUNC1(dst, solo_pcm->g723_buf, G723_PERIOD_BYTES);
		dst += G723_PERIOD_BYTES;
	}

	return 0;
}