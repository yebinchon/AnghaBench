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
typedef  scalar_t__ u16 ;
struct fmdev {int dummy; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FM_MONO_MODE ; 
 scalar_t__ FM_STEREO_MODE ; 
 scalar_t__ FM_STEREO_SOFT_BLEND ; 
 int /*<<< orphan*/  MOST_BLEND_SET ; 
 int /*<<< orphan*/  MOST_MODE_SET ; 
 int /*<<< orphan*/  REG_WR ; 
 int FUNC0 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct fmdev *fmdev, u16 mode)
{
	u16 payload;
	int ret;

	if (mode != FM_STEREO_MODE && mode != FM_MONO_MODE) {
		FUNC1("Invalid mode\n");
		return -EINVAL;
	}

	/* Set stereo/mono mode */
	payload = (u16)mode;
	ret = FUNC0(fmdev, MOST_MODE_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	/* Set stereo blending mode */
	payload = FM_STEREO_SOFT_BLEND;
	ret = FUNC0(fmdev, MOST_BLEND_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	return 0;
}