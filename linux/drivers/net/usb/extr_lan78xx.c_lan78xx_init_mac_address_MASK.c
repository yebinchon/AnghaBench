#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct lan78xx_net {TYPE_2__* net; TYPE_1__* udev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_MAC_OFFSET ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAF_HI_VALID_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_ADDRH ; 
 int /*<<< orphan*/  RX_ADDRL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  ifup ; 
 scalar_t__ FUNC5 (int*) ; 
 scalar_t__ FUNC6 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (struct lan78xx_net*,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (struct lan78xx_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct lan78xx_net*,int /*<<< orphan*/ ,TYPE_2__*,char*) ; 

__attribute__((used)) static void FUNC11(struct lan78xx_net *dev)
{
	u32 addr_lo, addr_hi;
	int ret;
	u8 addr[6];

	ret = FUNC8(dev, RX_ADDRL, &addr_lo);
	ret = FUNC8(dev, RX_ADDRH, &addr_hi);

	addr[0] = addr_lo & 0xFF;
	addr[1] = (addr_lo >> 8) & 0xFF;
	addr[2] = (addr_lo >> 16) & 0xFF;
	addr[3] = (addr_lo >> 24) & 0xFF;
	addr[4] = addr_hi & 0xFF;
	addr[5] = (addr_hi >> 8) & 0xFF;

	if (!FUNC5(addr)) {
		if (!FUNC2(&dev->udev->dev, addr)) {
			/* valid address present in Device Tree */
			FUNC10(dev, ifup, dev->net,
				  "MAC address read from Device Tree");
		} else if (((FUNC6(dev, EEPROM_MAC_OFFSET,
						 ETH_ALEN, addr) == 0) ||
			    (FUNC7(dev, EEPROM_MAC_OFFSET,
					      ETH_ALEN, addr) == 0)) &&
			   FUNC5(addr)) {
			/* eeprom values are valid so use them */
			FUNC10(dev, ifup, dev->net,
				  "MAC address read from EEPROM");
		} else {
			/* generate random MAC */
			FUNC3(addr);
			FUNC10(dev, ifup, dev->net,
				  "MAC address set to random addr");
		}

		addr_lo = addr[0] | (addr[1] << 8) |
			  (addr[2] << 16) | (addr[3] << 24);
		addr_hi = addr[4] | (addr[5] << 8);

		ret = FUNC9(dev, RX_ADDRL, addr_lo);
		ret = FUNC9(dev, RX_ADDRH, addr_hi);
	}

	ret = FUNC9(dev, FUNC1(0), addr_lo);
	ret = FUNC9(dev, FUNC0(0), addr_hi | MAF_HI_VALID_);

	FUNC4(dev->net->dev_addr, addr);
}