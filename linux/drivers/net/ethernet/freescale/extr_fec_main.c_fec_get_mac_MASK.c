#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {unsigned char* dev_addr; } ;
struct fec_platform_data {int /*<<< orphan*/  mac; } ;
struct fec_enet_private {unsigned char dev_id; TYPE_1__* pdev; scalar_t__ hwp; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct TYPE_5__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ FEC_ADDR_HIGH ; 
 scalar_t__ FEC_ADDR_LOW ; 
 scalar_t__ FEC_FLASHMAC ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,unsigned char*) ; 
 struct fec_platform_data* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 unsigned char* macaddr ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned char*,int) ; 
 struct fec_enet_private* FUNC9 (struct net_device*) ; 
 char* FUNC10 (struct device_node*) ; 
 int FUNC11 (scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC9(ndev);
	struct fec_platform_data *pdata = FUNC4(&fep->pdev->dev);
	unsigned char *iap, tmpaddr[ETH_ALEN];

	/*
	 * try to get mac address in following order:
	 *
	 * 1) module parameter via kernel command line in form
	 *    fec.macaddr=0x00,0x04,0x9f,0x01,0x30,0xe0
	 */
	iap = macaddr;

	/*
	 * 2) from device tree data
	 */
	if (!FUNC7(iap)) {
		struct device_node *np = fep->pdev->dev.of_node;
		if (np) {
			const char *mac = FUNC10(np);
			if (!FUNC0(mac))
				iap = (unsigned char *) mac;
		}
	}

	/*
	 * 3) from flash or fuse (via platform data)
	 */
	if (!FUNC7(iap)) {
#ifdef CONFIG_M5272
		if (FEC_FLASHMAC)
			iap = (unsigned char *)FEC_FLASHMAC;
#else
		if (pdata)
			iap = (unsigned char *)&pdata->mac;
#endif
	}

	/*
	 * 4) FEC mac registers set by bootloader
	 */
	if (!FUNC7(iap)) {
		*((__be32 *) &tmpaddr[0]) =
			FUNC2(FUNC11(fep->hwp + FEC_ADDR_LOW));
		*((__be16 *) &tmpaddr[4]) =
			FUNC1(FUNC11(fep->hwp + FEC_ADDR_HIGH) >> 16);
		iap = &tmpaddr[0];
	}

	/*
	 * 5) random mac address
	 */
	if (!FUNC7(iap)) {
		/* Report it and use a random ethernet address instead */
		FUNC3(&fep->pdev->dev, "Invalid MAC address: %pM\n", iap);
		FUNC6(ndev);
		FUNC5(&fep->pdev->dev, "Using random MAC address: %pM\n",
			 ndev->dev_addr);
		return;
	}

	FUNC8(ndev->dev_addr, iap, ETH_ALEN);

	/* Adjust MAC if using macaddr */
	if (iap == macaddr)
		 ndev->dev_addr[ETH_ALEN-1] = macaddr[ETH_ALEN-1] + fep->dev_id;
}