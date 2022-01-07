
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct cc2520_private {TYPE_4__* hw; TYPE_3__* spi; int amplified; } ;
struct TYPE_10__ {int flags; TYPE_2__* phy; scalar_t__ extra_tx_headroom; int * parent; struct cc2520_private* priv; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_7__ {int* channels; int * tx_powers; void* tx_powers_size; } ;
struct TYPE_8__ {int current_channel; TYPE_1__ supported; int transmit_power; int flags; int perm_extended_addr; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int IEEE802154_HW_AFILT ;
 int IEEE802154_HW_PROMISCUOUS ;
 int IEEE802154_HW_TX_OMIT_CKSUM ;
 int WPAN_PHY_FLAG_TXPOWER ;
 void* cc2520_cc2591_powers ;
 int cc2520_ops ;
 void* cc2520_powers ;
 int dev_vdbg (int *,char*) ;
 TYPE_4__* ieee802154_alloc_hw (int,int *) ;
 int ieee802154_free_hw (TYPE_4__*) ;
 int ieee802154_random_extended_addr (int *) ;
 int ieee802154_register_hw (TYPE_4__*) ;

__attribute__((used)) static int cc2520_register(struct cc2520_private *priv)
{
 int ret = -ENOMEM;

 priv->hw = ieee802154_alloc_hw(sizeof(*priv), &cc2520_ops);
 if (!priv->hw)
  goto err_ret;

 priv->hw->priv = priv;
 priv->hw->parent = &priv->spi->dev;
 priv->hw->extra_tx_headroom = 0;
 ieee802154_random_extended_addr(&priv->hw->phy->perm_extended_addr);


 priv->hw->phy->supported.channels[0] = 0x7FFF800;
 priv->hw->flags = IEEE802154_HW_TX_OMIT_CKSUM | IEEE802154_HW_AFILT |
     IEEE802154_HW_PROMISCUOUS;

 priv->hw->phy->flags = WPAN_PHY_FLAG_TXPOWER;

 if (!priv->amplified) {
  priv->hw->phy->supported.tx_powers = cc2520_powers;
  priv->hw->phy->supported.tx_powers_size = ARRAY_SIZE(cc2520_powers);
  priv->hw->phy->transmit_power = priv->hw->phy->supported.tx_powers[4];
 } else {
  priv->hw->phy->supported.tx_powers = cc2520_cc2591_powers;
  priv->hw->phy->supported.tx_powers_size = ARRAY_SIZE(cc2520_cc2591_powers);
  priv->hw->phy->transmit_power = priv->hw->phy->supported.tx_powers[0];
 }

 priv->hw->phy->current_channel = 11;

 dev_vdbg(&priv->spi->dev, "registered cc2520\n");
 ret = ieee802154_register_hw(priv->hw);
 if (ret)
  goto err_free_device;

 return 0;

err_free_device:
 ieee802154_free_hw(priv->hw);
err_ret:
 return ret;
}
