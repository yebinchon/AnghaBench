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
struct pxa168_eth_private {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_ADDR_HIGH ; 
 int /*<<< orphan*/  MAC_ADDR_LOW ; 
 struct pxa168_eth_private* FUNC0 (struct net_device*) ; 
 unsigned int FUNC1 (struct pxa168_eth_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
				       unsigned char *addr)
{
	struct pxa168_eth_private *pep = FUNC0(dev);
	unsigned int mac_h = FUNC1(pep, MAC_ADDR_HIGH);
	unsigned int mac_l = FUNC1(pep, MAC_ADDR_LOW);

	addr[0] = (mac_h >> 24) & 0xff;
	addr[1] = (mac_h >> 16) & 0xff;
	addr[2] = (mac_h >> 8) & 0xff;
	addr[3] = mac_h & 0xff;
	addr[4] = (mac_l >> 8) & 0xff;
	addr[5] = mac_l & 0xff;
}