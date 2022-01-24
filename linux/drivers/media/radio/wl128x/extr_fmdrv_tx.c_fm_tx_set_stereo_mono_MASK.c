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
struct TYPE_2__ {scalar_t__ aud_mode; } ;
struct fmdev {TYPE_1__ tx_data; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int /*<<< orphan*/  MONO_SET ; 
 int /*<<< orphan*/  REG_WR ; 
 int FUNC0 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 

int FUNC2(struct fmdev *fmdev, u16 mode)
{
	u16 payload;
	int ret;

	if (fmdev->tx_data.aud_mode == mode)
		return 0;

	FUNC1("stereo mode: %d\n", mode);

	/* Set Stereo/Mono mode */
	payload = (1 - mode);
	ret = FUNC0(fmdev, MONO_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	fmdev->tx_data.aud_mode = mode;

	return ret;
}