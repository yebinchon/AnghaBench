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
struct net_device {int flags; } ;
struct dmfe_board_info {int cr6_data; scalar_t__ chip_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  ioaddr; } ;

/* Variables and functions */
 int CR6_PAM ; 
 int CR6_PBF ; 
 int CR6_PM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int DMFE_MAX_MULTICAST ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ PCI_DM9132_ID ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 struct dmfe_board_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct dmfe_board_info *db = FUNC3(dev);
	unsigned long flags;
	int mc_count = FUNC2(dev);

	FUNC0(0, "dmfe_set_filter_mode()", 0);
	FUNC5(&db->lock, flags);

	if (dev->flags & IFF_PROMISC) {
		FUNC0(0, "Enable PROM Mode", 0);
		db->cr6_data |= CR6_PM | CR6_PBF;
		FUNC7(db->cr6_data, db->ioaddr);
		FUNC6(&db->lock, flags);
		return;
	}

	if (dev->flags & IFF_ALLMULTI || mc_count > DMFE_MAX_MULTICAST) {
		FUNC0(0, "Pass all multicast address", mc_count);
		db->cr6_data &= ~(CR6_PM | CR6_PBF);
		db->cr6_data |= CR6_PAM;
		FUNC6(&db->lock, flags);
		return;
	}

	FUNC0(0, "Set multicast address", mc_count);
	if (db->chip_id == PCI_DM9132_ID)
		FUNC1(dev);	/* DM9132 */
	else
		FUNC4(dev);	/* DM9102/DM9102A */
	FUNC6(&db->lock, flags);
}