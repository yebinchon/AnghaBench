#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  volume; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_1__ rx; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FM_MODE_RX ; 
 int /*<<< orphan*/  FM_RX_VOLUME_GAIN_STEP ; 
 int /*<<< orphan*/  FM_RX_VOLUME_MAX ; 
 int /*<<< orphan*/  FM_RX_VOLUME_MIN ; 
 int /*<<< orphan*/  REG_WR ; 
 int /*<<< orphan*/  VOLUME_SET ; 
 int FUNC0 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct fmdev *fmdev, u16 vol_to_set)
{
	u16 payload;
	int ret;

	if (fmdev->curr_fmmode != FM_MODE_RX)
		return -EPERM;

	if (vol_to_set > FM_RX_VOLUME_MAX) {
		FUNC1("Volume is not within(%d-%d) range\n",
			   FM_RX_VOLUME_MIN, FM_RX_VOLUME_MAX);
		return -EINVAL;
	}
	vol_to_set *= FM_RX_VOLUME_GAIN_STEP;

	payload = vol_to_set;
	ret = FUNC0(fmdev, VOLUME_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	fmdev->rx.volume = vol_to_set;
	return ret;
}