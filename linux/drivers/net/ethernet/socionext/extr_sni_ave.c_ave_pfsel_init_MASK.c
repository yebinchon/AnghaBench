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
struct net_device {unsigned char* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVE_PFNUM_BROADCAST ; 
 int /*<<< orphan*/  AVE_PFNUM_FILTER ; 
 int /*<<< orphan*/  AVE_PFNUM_UNICAST ; 
 int AVE_PF_SIZE ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev)
{
	unsigned char bcast_mac[ETH_ALEN];
	int i;

	FUNC3(bcast_mac);

	for (i = 0; i < AVE_PF_SIZE; i++)
		FUNC2(ndev, i);

	/* promiscious entry, select ring 0 */
	FUNC1(ndev, AVE_PFNUM_FILTER, 0);

	/* unicast entry */
	FUNC0(ndev, AVE_PFNUM_UNICAST, ndev->dev_addr, 6);

	/* broadcast entry */
	FUNC0(ndev, AVE_PFNUM_BROADCAST, bcast_mac, 6);
}