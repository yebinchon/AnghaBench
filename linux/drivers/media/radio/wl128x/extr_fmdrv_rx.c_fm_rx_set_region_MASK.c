#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ fm_band; scalar_t__ bot_freq; scalar_t__ top_freq; } ;
struct TYPE_4__ {scalar_t__ freq; TYPE_1__ region; } ;
struct fmdev {TYPE_2__ rx; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int /*<<< orphan*/  BAND_SET ; 
 int EINVAL ; 
 scalar_t__ FM_BAND_EUROPE_US ; 
 scalar_t__ FM_BAND_JAPAN ; 
 int /*<<< orphan*/  REG_WR ; 
 int FUNC0 (struct fmdev*,scalar_t__) ; 
 int FUNC1 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fmdev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct fmdev *fmdev, u8 region_to_set)
{
	u16 payload;
	u32 new_frq = 0;
	int ret;

	if (region_to_set != FM_BAND_EUROPE_US &&
	    region_to_set != FM_BAND_JAPAN) {
		FUNC4("Invalid band\n");
		return -EINVAL;
	}

	if (fmdev->rx.region.fm_band == region_to_set) {
		FUNC4("Requested band is already configured\n");
		return 0;
	}

	/* Send cmd to set the band  */
	payload = (u16)region_to_set;
	ret = FUNC1(fmdev, BAND_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	FUNC2(fmdev, region_to_set);

	/* Check whether current RX frequency is within band boundary */
	if (fmdev->rx.freq < fmdev->rx.region.bot_freq)
		new_frq = fmdev->rx.region.bot_freq;
	else if (fmdev->rx.freq > fmdev->rx.region.top_freq)
		new_frq = fmdev->rx.region.top_freq;

	if (new_frq) {
		FUNC3("Current freq is not within band limit boundary,switching to %d KHz\n",
		      new_frq);
		 /* Current RX frequency is not in range. So, update it */
		ret = FUNC0(fmdev, new_frq);
	}

	return ret;
}