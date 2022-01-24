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
struct mii_bus {struct macb* priv; } ;
struct macb {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE ; 
 int /*<<< orphan*/  DATA ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MACB_MAN_CODE ; 
 int MACB_MAN_READ ; 
 int MACB_MAN_SOF ; 
 int /*<<< orphan*/  MAN ; 
 int /*<<< orphan*/  PHYA ; 
 int /*<<< orphan*/  REGA ; 
 int /*<<< orphan*/  RW ; 
 int /*<<< orphan*/  SOF ; 
 int FUNC2 (struct macb*) ; 
 int /*<<< orphan*/  FUNC3 (struct macb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct macb*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mii_bus *bus, int mii_id, int regnum)
{
	struct macb *bp = bus->priv;
	int status;

	status = FUNC5(&bp->pdev->dev);
	if (status < 0)
		goto mdio_pm_exit;

	status = FUNC2(bp);
	if (status < 0)
		goto mdio_read_exit;

	FUNC4(bp, MAN, (FUNC0(SOF, MACB_MAN_SOF)
			      | FUNC0(RW, MACB_MAN_READ)
			      | FUNC0(PHYA, mii_id)
			      | FUNC0(REGA, regnum)
			      | FUNC0(CODE, MACB_MAN_CODE)));

	status = FUNC2(bp);
	if (status < 0)
		goto mdio_read_exit;

	status = FUNC1(DATA, FUNC3(bp, MAN));

mdio_read_exit:
	FUNC6(&bp->pdev->dev);
	FUNC7(&bp->pdev->dev);
mdio_pm_exit:
	return status;
}