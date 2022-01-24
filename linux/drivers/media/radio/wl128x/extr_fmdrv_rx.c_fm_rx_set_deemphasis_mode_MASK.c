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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ deemphasis_mode; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_1__ rx; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int /*<<< orphan*/  DEMPH_MODE_SET ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FM_MODE_RX ; 
 scalar_t__ FM_RX_EMPHASIS_FILTER_50_USEC ; 
 scalar_t__ FM_RX_EMPHASIS_FILTER_75_USEC ; 
 int /*<<< orphan*/  REG_WR ; 
 int FUNC0 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

int FUNC2(struct fmdev *fmdev, u16 mode)
{
	u16 payload;
	int ret;

	if (fmdev->curr_fmmode != FM_MODE_RX)
		return -EPERM;

	if (mode != FM_RX_EMPHASIS_FILTER_50_USEC &&
			mode != FM_RX_EMPHASIS_FILTER_75_USEC) {
		FUNC1("Invalid rx de-emphasis mode (%d)\n", mode);
		return -EINVAL;
	}

	payload = mode;
	ret = FUNC0(fmdev, DEMPH_MODE_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	fmdev->rx.deemphasis_mode = mode;

	return 0;
}