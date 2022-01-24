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
typedef  scalar_t__ u16 ;
struct fmdev {int dummy; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FM_BAND_EUROPE_US ; 
 scalar_t__ FM_BAND_JAPAN ; 
 int /*<<< orphan*/  REG_WR ; 
 int /*<<< orphan*/  TX_BAND_SET ; 
 int FUNC0 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct fmdev *fmdev, u8 region)
{
	u16 payload;
	int ret;

	if (region != FM_BAND_EUROPE_US && region != FM_BAND_JAPAN) {
		FUNC1("Invalid band\n");
		return -EINVAL;
	}

	/* Send command to set the band */
	payload = (u16)region;
	ret = FUNC0(fmdev, TX_BAND_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	return 0;
}