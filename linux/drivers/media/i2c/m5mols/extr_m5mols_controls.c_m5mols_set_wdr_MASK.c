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
struct m5mols_info {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPP_WDR_EN ; 
 int /*<<< orphan*/  MON_TONE_CTL ; 
 int /*<<< orphan*/  REG_CAPTURE ; 
 int FUNC0 (struct m5mols_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct m5mols_info *info, int wdr)
{
	int ret;

	ret = FUNC1(&info->sd, MON_TONE_CTL, wdr ? 9 : 5);
	if (ret < 0)
		return ret;

	ret = FUNC0(info, REG_CAPTURE);
	if (ret < 0)
		return ret;

	return FUNC1(&info->sd, CAPP_WDR_EN, wdr);
}