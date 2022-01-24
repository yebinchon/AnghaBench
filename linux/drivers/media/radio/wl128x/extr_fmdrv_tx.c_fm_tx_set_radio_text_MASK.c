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
typedef  int u16 ;
struct fmdev {scalar_t__ curr_fmmode; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FM_MODE_TX ; 
 int /*<<< orphan*/  RDS_DATA_ENB ; 
 int /*<<< orphan*/  REG_WR ; 
 int /*<<< orphan*/  FUNC0 (struct fmdev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fmdev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fmdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct fmdev *fmdev, u8 *rds_text, u8 rds_type)
{
	u16 payload;
	int ret;

	if (fmdev->curr_fmmode != FM_MODE_TX)
		return -EPERM;

	FUNC0(fmdev, 0);

	/* Set RDS length */
	FUNC3(fmdev, rds_type, FUNC5(rds_text));

	/* Set RDS text */
	FUNC4(fmdev, rds_text);

	/* Set RDS mode */
	FUNC2(fmdev, 0x0);

	payload = 1;
	ret = FUNC1(fmdev, RDS_DATA_ENB, REG_WR, &payload,
			sizeof(payload), NULL, NULL);
	if (ret < 0)
		return ret;

	return 0;
}