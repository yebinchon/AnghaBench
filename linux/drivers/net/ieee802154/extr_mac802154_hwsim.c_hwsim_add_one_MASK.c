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
struct ieee802154_hw {struct device* parent; int /*<<< orphan*/  flags; TYPE_2__* phy; struct hwsim_phy* priv; } ;
struct hwsim_pib {int dummy; } ;
struct hwsim_phy {int idx; struct ieee802154_hw* hw; int /*<<< orphan*/  list; int /*<<< orphan*/  edges; int /*<<< orphan*/  pib; } ;
struct genl_info {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int* channels; } ;
struct TYPE_4__ {int current_channel; int /*<<< orphan*/  perm_extended_addr; TYPE_1__ supported; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE802154_HW_PROMISCUOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct genl_info*,struct hwsim_phy*) ; 
 int /*<<< orphan*/  hwsim_ops ; 
 int /*<<< orphan*/  hwsim_phys ; 
 int /*<<< orphan*/  hwsim_phys_lock ; 
 int /*<<< orphan*/  hwsim_radio_idx ; 
 int FUNC2 (struct hwsim_phy*) ; 
 struct ieee802154_hw* FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee802154_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ieee802154_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee802154_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct hwsim_pib*) ; 
 struct hwsim_pib* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct hwsim_pib*) ; 

__attribute__((used)) static int FUNC14(struct genl_info *info, struct device *dev,
			 bool init)
{
	struct ieee802154_hw *hw;
	struct hwsim_phy *phy;
	struct hwsim_pib *pib;
	int idx;
	int err;

	idx = hwsim_radio_idx++;

	hw = FUNC3(sizeof(*phy), &hwsim_ops);
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

	FUNC5(&hw->phy->perm_extended_addr);

	/* hwsim phy channel 13 as default */
	hw->phy->current_channel = 13;
	pib = FUNC9(sizeof(*pib), GFP_KERNEL);
	if (!pib) {
		err = -ENOMEM;
		goto err_pib;
	}

	FUNC13(phy->pib, pib);
	phy->idx = idx;
	FUNC0(&phy->edges);

	hw->flags = IEEE802154_HW_PROMISCUOUS;
	hw->parent = dev;

	err = FUNC6(hw);
	if (err)
		goto err_reg;

	FUNC11(&hwsim_phys_lock);
	if (init) {
		err = FUNC2(phy);
		if (err < 0) {
			FUNC12(&hwsim_phys_lock);
			goto err_subscribe;
		}
	}
	FUNC10(&phy->list, &hwsim_phys);
	FUNC12(&hwsim_phys_lock);

	FUNC1(info, phy);

	return idx;

err_subscribe:
	FUNC7(phy->hw);
err_reg:
	FUNC8(pib);
err_pib:
	FUNC4(phy->hw);
	return err;
}