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
struct net_device {int /*<<< orphan*/  name; } ;
struct mii_if_info {int (* mdio_read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  phy_id; int /*<<< orphan*/  dev; } ;
struct board_info {int /*<<< orphan*/  dev; struct mii_if_info mii; struct net_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM9000_NCR ; 
 int /*<<< orphan*/  MII_LPA ; 
 unsigned int NCR_FDX ; 
 unsigned int NSR_SPEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 unsigned int FUNC1 (struct board_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct board_info *db,
				unsigned carrier, unsigned nsr)
{
	int lpa;
	struct net_device *ndev = db->ndev;
	struct mii_if_info *mii = &db->mii;
	unsigned ncr = FUNC1(db, DM9000_NCR);

	if (carrier) {
		lpa = mii->mdio_read(mii->dev, mii->phy_id, MII_LPA);
		FUNC0(db->dev,
			 "%s: link up, %dMbps, %s-duplex, lpa 0x%04X\n",
			 ndev->name, (nsr & NSR_SPEED) ? 10 : 100,
			 (ncr & NCR_FDX) ? "full" : "half", lpa);
	} else {
		FUNC0(db->dev, "%s: link down\n", ndev->name);
	}
}