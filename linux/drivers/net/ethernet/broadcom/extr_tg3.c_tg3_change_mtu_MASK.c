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
struct tg3 {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ ASIC_REV_5717 ; 
 scalar_t__ ASIC_REV_5719 ; 
 scalar_t__ ASIC_REV_5720 ; 
 scalar_t__ ASIC_REV_57766 ; 
 int /*<<< orphan*/  RESET_KIND_SHUTDOWN ; 
 struct tg3* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC7 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC8 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC9 (struct tg3*) ; 
 int FUNC10 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,struct tg3*,int) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev, int new_mtu)
{
	struct tg3 *tp = FUNC0(dev);
	int err;
	bool reset_phy = false;

	if (!FUNC1(dev)) {
		/* We'll just catch it later when the
		 * device is up'd.
		 */
		FUNC11(dev, tp, new_mtu);
		return 0;
	}

	FUNC9(tp);

	FUNC7(tp);

	FUNC11(dev, tp, new_mtu);

	FUNC3(tp, 1);

	FUNC5(tp, RESET_KIND_SHUTDOWN, 1);

	/* Reset PHY, otherwise the read DMA engine will be in a mode that
	 * breaks all requests to 256 bytes.
	 */
	if (FUNC2(tp) == ASIC_REV_57766 ||
	    FUNC2(tp) == ASIC_REV_5717 ||
	    FUNC2(tp) == ASIC_REV_5719 ||
	    FUNC2(tp) == ASIC_REV_5720)
		reset_phy = true;

	err = FUNC10(tp, reset_phy);

	if (!err)
		FUNC6(tp);

	FUNC4(tp);

	if (!err)
		FUNC8(tp);

	return err;
}