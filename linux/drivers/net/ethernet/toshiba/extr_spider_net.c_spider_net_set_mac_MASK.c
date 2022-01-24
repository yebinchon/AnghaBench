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
struct spider_net_card {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int* dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  SPIDER_NET_GMACOPEMD ; 
 int /*<<< orphan*/  SPIDER_NET_GMACUNIMACL ; 
 int /*<<< orphan*/  SPIDER_NET_GMACUNIMACU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct spider_net_card* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct spider_net_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct spider_net_card*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev, void *p)
{
	struct spider_net_card *card = FUNC2(netdev);
	u32 macl, macu, regvalue;
	struct sockaddr *addr = p;

	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC1(netdev->dev_addr, addr->sa_data, ETH_ALEN);

	/* switch off GMACTPE and GMACRPE */
	regvalue = FUNC3(card, SPIDER_NET_GMACOPEMD);
	regvalue &= ~((1 << 5) | (1 << 6));
	FUNC5(card, SPIDER_NET_GMACOPEMD, regvalue);

	/* write mac */
	macu = (netdev->dev_addr[0]<<24) + (netdev->dev_addr[1]<<16) +
		(netdev->dev_addr[2]<<8) + (netdev->dev_addr[3]);
	macl = (netdev->dev_addr[4]<<8) + (netdev->dev_addr[5]);
	FUNC5(card, SPIDER_NET_GMACUNIMACU, macu);
	FUNC5(card, SPIDER_NET_GMACUNIMACL, macl);

	/* switch GMACTPE and GMACRPE back on */
	regvalue = FUNC3(card, SPIDER_NET_GMACOPEMD);
	regvalue |= ((1 << 5) | (1 << 6));
	FUNC5(card, SPIDER_NET_GMACOPEMD, regvalue);

	FUNC4(card);

	return 0;
}