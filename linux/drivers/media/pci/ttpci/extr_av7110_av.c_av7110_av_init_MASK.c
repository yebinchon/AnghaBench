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
typedef  int /*<<< orphan*/  u8 ;
struct ipack {struct av7110* data; } ;
struct av7110 {int /*<<< orphan*/ ** kbuf; scalar_t__ iobuf; int /*<<< orphan*/  aout; int /*<<< orphan*/  avout; struct ipack* ipack; } ;

/* Variables and functions */
 scalar_t__ AOUTLEN ; 
 scalar_t__ AVOUTLEN ; 
 scalar_t__ BMPLEN ; 
 int IPACKS ; 
 int /*<<< orphan*/  FUNC0 (struct ipack*) ; 
 int FUNC1 (struct ipack*,int,void (*) (u8*,int,void*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  play_audio_cb ; 
 int /*<<< orphan*/  play_video_cb ; 

int FUNC3(struct av7110 *av7110)
{
	void (*play[])(u8 *, int, void *) = { play_audio_cb, play_video_cb };
	int i, ret;

	for (i = 0; i < 2; i++) {
		struct ipack *ipack = av7110->ipack + i;

		ret = FUNC1(ipack, IPACKS, play[i]);
		if (ret < 0) {
			if (i)
				FUNC0(--ipack);
			goto out;
		}
		ipack->data = av7110;
	}

	FUNC2(&av7110->avout, av7110->iobuf, AVOUTLEN);
	FUNC2(&av7110->aout, av7110->iobuf + AVOUTLEN, AOUTLEN);

	av7110->kbuf[0] = (u8 *)(av7110->iobuf + AVOUTLEN + AOUTLEN + BMPLEN);
	av7110->kbuf[1] = av7110->kbuf[0] + 2 * IPACKS;
out:
	return ret;
}