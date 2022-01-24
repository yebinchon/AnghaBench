#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct ftgmac100 {TYPE_1__* netdev; int /*<<< orphan*/  dev; scalar_t__ base; } ;
struct TYPE_2__ {unsigned int* dev_addr; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ FTGMAC100_OFFSET_MAC_LADR ; 
 scalar_t__ FTGMAC100_OFFSET_MAC_MADR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (unsigned int*) ; 

__attribute__((used)) static void FUNC6(struct ftgmac100 *priv)
{
	u8 mac[ETH_ALEN];
	unsigned int m;
	unsigned int l;
	void *addr;

	addr = FUNC1(priv->dev, mac, ETH_ALEN);
	if (addr) {
		FUNC3(priv->netdev->dev_addr, mac);
		FUNC0(priv->dev, "Read MAC address %pM from device tree\n",
			 mac);
		return;
	}

	m = FUNC4(priv->base + FTGMAC100_OFFSET_MAC_MADR);
	l = FUNC4(priv->base + FTGMAC100_OFFSET_MAC_LADR);

	mac[0] = (m >> 8) & 0xff;
	mac[1] = m & 0xff;
	mac[2] = (l >> 24) & 0xff;
	mac[3] = (l >> 16) & 0xff;
	mac[4] = (l >> 8) & 0xff;
	mac[5] = l & 0xff;

	if (FUNC5(mac)) {
		FUNC3(priv->netdev->dev_addr, mac);
		FUNC0(priv->dev, "Read MAC address %pM from chip\n", mac);
	} else {
		FUNC2(priv->netdev);
		FUNC0(priv->dev, "Generated random MAC address %pM\n",
			 priv->netdev->dev_addr);
	}
}