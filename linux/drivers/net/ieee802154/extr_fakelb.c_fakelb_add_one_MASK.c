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
struct ieee802154_hw {struct device* parent; int /*<<< orphan*/  flags; TYPE_2__* phy; struct fakelb_phy* priv; } ;
struct fakelb_phy {int channel; struct ieee802154_hw* hw; int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int* channels; } ;
struct TYPE_4__ {int current_channel; int /*<<< orphan*/  perm_extended_addr; TYPE_1__ supported; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IEEE802154_HW_PROMISCUOUS ; 
 int /*<<< orphan*/  fakelb_ops ; 
 int /*<<< orphan*/  fakelb_phys ; 
 int /*<<< orphan*/  fakelb_phys_lock ; 
 struct ieee802154_hw* FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee802154_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ieee802154_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct ieee802154_hw *hw;
	struct fakelb_phy *phy;
	int err;

	hw = FUNC0(sizeof(*phy), &fakelb_ops);
	if (!hw)
		return -ENOMEM;

	phy = hw->priv;
	phy->hw = hw;

	/* 868 MHz BPSK	802.15.4-2003 */
	hw->phy->supported.channels[0] |= 1;
	/* 915 MHz BPSK	802.15.4-2003 */
	hw->phy->supported.channels[0] |= 0x7fe;
	/* 2.4 GHz O-QPSK 802.15.4-2003 */
	hw->phy->supported.channels[0] |= 0x7FFF800;
	/* 868 MHz ASK 802.15.4-2006 */
	hw->phy->supported.channels[1] |= 1;
	/* 915 MHz ASK 802.15.4-2006 */
	hw->phy->supported.channels[1] |= 0x7fe;
	/* 868 MHz O-QPSK 802.15.4-2006 */
	hw->phy->supported.channels[2] |= 1;
	/* 915 MHz O-QPSK 802.15.4-2006 */
	hw->phy->supported.channels[2] |= 0x7fe;
	/* 2.4 GHz CSS 802.15.4a-2007 */
	hw->phy->supported.channels[3] |= 0x3fff;
	/* UWB Sub-gigahertz 802.15.4a-2007 */
	hw->phy->supported.channels[4] |= 1;
	/* UWB Low band 802.15.4a-2007 */
	hw->phy->supported.channels[4] |= 0x1e;
	/* UWB High band 802.15.4a-2007 */
	hw->phy->supported.channels[4] |= 0xffe0;
	/* 750 MHz O-QPSK 802.15.4c-2009 */
	hw->phy->supported.channels[5] |= 0xf;
	/* 750 MHz MPSK 802.15.4c-2009 */
	hw->phy->supported.channels[5] |= 0xf0;
	/* 950 MHz BPSK 802.15.4d-2009 */
	hw->phy->supported.channels[6] |= 0x3ff;
	/* 950 MHz GFSK 802.15.4d-2009 */
	hw->phy->supported.channels[6] |= 0x3ffc00;

	FUNC2(&hw->phy->perm_extended_addr);
	/* fake phy channel 13 as default */
	hw->phy->current_channel = 13;
	phy->channel = hw->phy->current_channel;

	hw->flags = IEEE802154_HW_PROMISCUOUS;
	hw->parent = dev;

	err = FUNC3(hw);
	if (err)
		goto err_reg;

	FUNC5(&fakelb_phys_lock);
	FUNC4(&phy->list, &fakelb_phys);
	FUNC6(&fakelb_phys_lock);

	return 0;

err_reg:
	FUNC1(phy->hw);
	return err;
}