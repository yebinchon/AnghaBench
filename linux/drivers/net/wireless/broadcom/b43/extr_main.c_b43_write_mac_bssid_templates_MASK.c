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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct b43_wldev {TYPE_1__* wl; } ;
struct TYPE_2__ {scalar_t__* mac_addr; scalar_t__* bssid; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  B43_MACFILTER_BSSID ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__ const*,int) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev)
{
	const u8 *mac;
	const u8 *bssid;
	u8 mac_bssid[ETH_ALEN * 2];
	int i;
	u32 tmp;

	bssid = dev->wl->bssid;
	mac = dev->wl->mac_addr;

	FUNC1(dev, B43_MACFILTER_BSSID, bssid);

	FUNC3(mac_bssid, mac, ETH_ALEN);
	FUNC3(mac_bssid + ETH_ALEN, bssid, ETH_ALEN);

	/* Write our MAC address and BSSID to template ram */
	for (i = 0; i < FUNC0(mac_bssid); i += sizeof(u32)) {
		tmp = (u32) (mac_bssid[i + 0]);
		tmp |= (u32) (mac_bssid[i + 1]) << 8;
		tmp |= (u32) (mac_bssid[i + 2]) << 16;
		tmp |= (u32) (mac_bssid[i + 3]) << 24;
		FUNC2(dev, 0x20 + i, tmp);
	}
}