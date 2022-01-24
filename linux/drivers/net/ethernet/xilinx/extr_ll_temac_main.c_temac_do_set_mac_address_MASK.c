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
struct temac_local {int /*<<< orphan*/  indirect_lock; } ;
struct net_device {int* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  XTE_UAW0_OFFSET ; 
 int /*<<< orphan*/  XTE_UAW1_OFFSET ; 
 struct temac_local* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct temac_local*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev)
{
	struct temac_local *lp = FUNC0(ndev);
	unsigned long flags;

	/* set up unicast MAC address filter set its mac address */
	FUNC1(lp->indirect_lock, flags);
	FUNC3(lp, XTE_UAW0_OFFSET,
				    (ndev->dev_addr[0]) |
				    (ndev->dev_addr[1] << 8) |
				    (ndev->dev_addr[2] << 16) |
				    (ndev->dev_addr[3] << 24));
	/* There are reserved bits in EUAW1
	 * so don't affect them Set MAC bits [47:32] in EUAW1 */
	FUNC3(lp, XTE_UAW1_OFFSET,
				    (ndev->dev_addr[4] & 0x000000ff) |
				    (ndev->dev_addr[5] << 8));
	FUNC2(lp->indirect_lock, flags);
}