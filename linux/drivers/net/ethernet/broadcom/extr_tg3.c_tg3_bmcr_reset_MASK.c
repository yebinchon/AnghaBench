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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int BMCR_RESET ; 
 int EBUSY ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct tg3*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct tg3 *tp)
{
	u32 phy_control;
	int limit, err;

	/* OK, reset it, and poll the BMCR_RESET bit until it
	 * clears or we time out.
	 */
	phy_control = BMCR_RESET;
	err = FUNC1(tp, MII_BMCR, phy_control);
	if (err != 0)
		return -EBUSY;

	limit = 5000;
	while (limit--) {
		err = FUNC0(tp, MII_BMCR, &phy_control);
		if (err != 0)
			return -EBUSY;

		if ((phy_control & BMCR_RESET) == 0) {
			FUNC2(40);
			break;
		}
		FUNC2(10);
	}
	if (limit < 0)
		return -EBUSY;

	return 0;
}