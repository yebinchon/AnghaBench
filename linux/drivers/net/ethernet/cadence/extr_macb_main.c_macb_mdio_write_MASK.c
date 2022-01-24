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
typedef  int u16 ;
struct mii_bus {struct macb* priv; } ;
struct macb {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE ; 
 int /*<<< orphan*/  DATA ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MACB_MAN_CODE ; 
 int MACB_MAN_SOF ; 
 int MACB_MAN_WRITE ; 
 int /*<<< orphan*/  MAN ; 
 int /*<<< orphan*/  PHYA ; 
 int /*<<< orphan*/  REGA ; 
 int /*<<< orphan*/  RW ; 
 int /*<<< orphan*/  SOF ; 
 int FUNC1 (struct macb*) ; 
 int /*<<< orphan*/  FUNC2 (struct macb*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mii_bus *bus, int mii_id, int regnum,
			   u16 value)
{
	struct macb *bp = bus->priv;
	int status;

	status = FUNC3(&bp->pdev->dev);
	if (status < 0)
		goto mdio_pm_exit;

	status = FUNC1(bp);
	if (status < 0)
		goto mdio_write_exit;

	FUNC2(bp, MAN, (FUNC0(SOF, MACB_MAN_SOF)
			      | FUNC0(RW, MACB_MAN_WRITE)
			      | FUNC0(PHYA, mii_id)
			      | FUNC0(REGA, regnum)
			      | FUNC0(CODE, MACB_MAN_CODE)
			      | FUNC0(DATA, value)));

	status = FUNC1(bp);
	if (status < 0)
		goto mdio_write_exit;

mdio_write_exit:
	FUNC4(&bp->pdev->dev);
	FUNC5(&bp->pdev->dev);
mdio_pm_exit:
	return status;
}