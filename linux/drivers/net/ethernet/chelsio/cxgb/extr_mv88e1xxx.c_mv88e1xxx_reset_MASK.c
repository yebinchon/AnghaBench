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
struct cphy {int dummy; } ;

/* Variables and functions */
 int BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct cphy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cphy*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct cphy *cphy, int wait)
{
	u32 ctl;
	int time_out = 1000;

	FUNC0(cphy, MII_BMCR, BMCR_RESET);

	do {
		(void) FUNC1(cphy, MII_BMCR, &ctl);
		ctl &= BMCR_RESET;
		if (ctl)
			FUNC2(1);
	} while (ctl && --time_out);

	return ctl ? -1 : 0;
}