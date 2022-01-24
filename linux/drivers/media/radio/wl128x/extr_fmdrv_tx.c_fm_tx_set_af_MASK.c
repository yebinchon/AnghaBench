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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct fmdev {scalar_t__ curr_fmmode; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FM_MODE_TX ; 
 int /*<<< orphan*/  REG_WR ; 
 int /*<<< orphan*/  TA_SET ; 
 int FUNC0 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int FUNC2(struct fmdev *fmdev, u32 af)
{
	u16 payload;
	int ret;

	if (fmdev->curr_fmmode != FM_MODE_TX)
		return -EPERM;

	FUNC1("AF: %d\n", af);

	af = (af - 87500) / 100;
	payload = (u16)af;
	ret = FUNC0(fmdev, TA_SET, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	return 0;
}