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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fmdev {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  REG_RD ; 
 int /*<<< orphan*/  RSSI_LVL_GET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct fmdev *fmdev, u16 *rssilvl)
{
	__be16 curr_rssi_lel;
	u32 resp_len;
	int ret;

	if (rssilvl == NULL) {
		FUNC2("Invalid memory\n");
		return -ENOMEM;
	}
	/* Read current RSSI level */
	ret = FUNC1(fmdev, RSSI_LVL_GET, REG_RD, NULL, 2,
			&curr_rssi_lel, &resp_len);
	if (ret < 0)
		return ret;

	*rssilvl = FUNC0(curr_rssi_lel);

	return 0;
}