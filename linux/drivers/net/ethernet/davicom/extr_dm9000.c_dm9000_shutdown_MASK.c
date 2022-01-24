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
struct net_device {int dummy; } ;
struct board_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_RESET ; 
 int /*<<< orphan*/  DM9000_GPR ; 
 int /*<<< orphan*/  DM9000_RCR ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct board_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct board_info*,int /*<<< orphan*/ ,int) ; 
 struct board_info* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void
FUNC4(struct net_device *dev)
{
	struct board_info *db = FUNC3(dev);

	/* RESET device */
	FUNC1(dev, 0, MII_BMCR, BMCR_RESET);	/* PHY RESET */
	FUNC2(db, DM9000_GPR, 0x01);	/* Power-Down PHY */
	FUNC0(db);
	FUNC2(db, DM9000_RCR, 0x00);	/* Disable RX */
}