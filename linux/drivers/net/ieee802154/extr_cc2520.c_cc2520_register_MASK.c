#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct cc2520_private {TYPE_4__* hw; TYPE_3__* spi; int /*<<< orphan*/  amplified; } ;
struct TYPE_10__ {int flags; TYPE_2__* phy; scalar_t__ extra_tx_headroom; int /*<<< orphan*/ * parent; struct cc2520_private* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int* channels; int /*<<< orphan*/ * tx_powers; void* tx_powers_size; } ;
struct TYPE_8__ {int current_channel; TYPE_1__ supported; int /*<<< orphan*/  transmit_power; int /*<<< orphan*/  flags; int /*<<< orphan*/  perm_extended_addr; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int ENOMEM ; 
 int IEEE802154_HW_AFILT ; 
 int IEEE802154_HW_PROMISCUOUS ; 
 int IEEE802154_HW_TX_OMIT_CKSUM ; 
 int /*<<< orphan*/  WPAN_PHY_FLAG_TXPOWER ; 
 void* cc2520_cc2591_powers ; 
 int /*<<< orphan*/  cc2520_ops ; 
 void* cc2520_powers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_4__* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC6(struct cc2520_private *priv)
{
	int ret = -ENOMEM;

	priv->hw = FUNC2(sizeof(*priv), &cc2520_ops);
	if (!priv->hw)
		goto err_ret;

	priv->hw->priv = priv;
	priv->hw->parent = &priv->spi->dev;
	priv->hw->extra_tx_headroom = 0;
	FUNC4(&priv->hw->phy->perm_extended_addr);

	/* We do support only 2.4 Ghz */
	priv->hw->phy->supported.channels[0] = 0x7FFF800;
	priv->hw->flags = IEEE802154_HW_TX_OMIT_CKSUM | IEEE802154_HW_AFILT |
			  IEEE802154_HW_PROMISCUOUS;

	priv->hw->phy->flags = WPAN_PHY_FLAG_TXPOWER;

	if (!priv->amplified) {
		priv->hw->phy->supported.tx_powers = cc2520_powers;
		priv->hw->phy->supported.tx_powers_size = FUNC0(cc2520_powers);
		priv->hw->phy->transmit_power = priv->hw->phy->supported.tx_powers[4];
	} else {
		priv->hw->phy->supported.tx_powers = cc2520_cc2591_powers;
		priv->hw->phy->supported.tx_powers_size = FUNC0(cc2520_cc2591_powers);
		priv->hw->phy->transmit_power = priv->hw->phy->supported.tx_powers[0];
	}

	priv->hw->phy->current_channel = 11;

	FUNC1(&priv->spi->dev, "registered cc2520\n");
	ret = FUNC5(priv->hw);
	if (ret)
		goto err_free_device;

	return 0;

err_free_device:
	FUNC3(priv->hw);
err_ret:
	return ret;
}