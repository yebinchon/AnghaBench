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
struct board_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM9000_NCR ; 
 int NCR_MAC_LBK ; 
 int NCR_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct board_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct board_info *db)
{
	FUNC0(db->dev, "resetting device\n");

	/* Reset DM9000, see DM9000 Application Notes V1.22 Jun 11, 2004 page 29
	 * The essential point is that we have to do a double reset, and the
	 * instruction is to set LBK into MAC internal loopback mode.
	 */
	FUNC3(db, DM9000_NCR, NCR_RST | NCR_MAC_LBK);
	FUNC4(100); /* Application note says at least 20 us */
	if (FUNC2(db, DM9000_NCR) & 1)
		FUNC1(db->dev, "dm9000 did not respond to first reset\n");

	FUNC3(db, DM9000_NCR, 0);
	FUNC3(db, DM9000_NCR, NCR_RST | NCR_MAC_LBK);
	FUNC4(100);
	if (FUNC2(db, DM9000_NCR) & 1)
		FUNC1(db->dev, "dm9000 did not respond to second reset\n");
}