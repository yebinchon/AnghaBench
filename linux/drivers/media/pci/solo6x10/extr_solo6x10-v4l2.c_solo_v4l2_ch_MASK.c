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
typedef  scalar_t__ u8 ;
struct solo_dev {scalar_t__ nr_chans; scalar_t__ nr_ext; int /*<<< orphan*/  video_hsize; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct solo_dev*,int) ; 
 int FUNC1 (struct solo_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct solo_dev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct solo_dev *solo_dev, u8 ch, int on)
{
	u8 ext_ch;

	if (ch < solo_dev->nr_chans) {
		FUNC3(solo_dev, ch, on ? 0 : solo_dev->video_hsize,
			       on ? 0 : FUNC2(solo_dev),
			       solo_dev->video_hsize, FUNC2(solo_dev),
			       on ? 1 : 0);
		return 0;
	}

	if (ch >= solo_dev->nr_chans + solo_dev->nr_ext)
		return -EINVAL;

	ext_ch = ch - solo_dev->nr_chans;

	/* 4up's first */
	if (ext_ch < 4)
		return FUNC1(solo_dev, ext_ch, on);

	/* Remaining case is 16up for 16-port */
	return FUNC0(solo_dev, on);
}