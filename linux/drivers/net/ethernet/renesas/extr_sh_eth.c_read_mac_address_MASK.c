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
struct net_device {int* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MAHR ; 
 int /*<<< orphan*/  MALR ; 
 int /*<<< orphan*/  FUNC0 (int*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev, unsigned char *mac)
{
	if (mac[0] || mac[1] || mac[2] || mac[3] || mac[4] || mac[5]) {
		FUNC0(ndev->dev_addr, mac, ETH_ALEN);
	} else {
		u32 mahr = FUNC1(ndev, MAHR);
		u32 malr = FUNC1(ndev, MALR);

		ndev->dev_addr[0] = (mahr >> 24) & 0xFF;
		ndev->dev_addr[1] = (mahr >> 16) & 0xFF;
		ndev->dev_addr[2] = (mahr >>  8) & 0xFF;
		ndev->dev_addr[3] = (mahr >>  0) & 0xFF;
		ndev->dev_addr[4] = (malr >>  8) & 0xFF;
		ndev->dev_addr[5] = (malr >>  0) & 0xFF;
	}
}