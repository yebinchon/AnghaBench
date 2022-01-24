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
struct sockaddr {unsigned char* sa_data; } ;
struct pxa168_eth_private {int dummy; } ;
struct net_device {unsigned char* dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MAC_ADDR_HIGH ; 
 int /*<<< orphan*/  MAC_ADDR_LOW ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 
 struct pxa168_eth_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa168_eth_private*,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa168_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, void *addr)
{
	struct sockaddr *sa = addr;
	struct pxa168_eth_private *pep = FUNC2(dev);
	unsigned char oldMac[ETH_ALEN];
	u32 mac_h, mac_l;

	if (!FUNC0(sa->sa_data))
		return -EADDRNOTAVAIL;
	FUNC1(oldMac, dev->dev_addr, ETH_ALEN);
	FUNC1(dev->dev_addr, sa->sa_data, ETH_ALEN);

	mac_h = dev->dev_addr[0] << 24;
	mac_h |= dev->dev_addr[1] << 16;
	mac_h |= dev->dev_addr[2] << 8;
	mac_h |= dev->dev_addr[3];
	mac_l = dev->dev_addr[4] << 8;
	mac_l |= dev->dev_addr[5];
	FUNC6(pep, MAC_ADDR_HIGH, mac_h);
	FUNC6(pep, MAC_ADDR_LOW, mac_l);

	FUNC3(dev);
	FUNC5(pep, oldMac, dev->dev_addr);
	FUNC4(dev);
	return 0;
}