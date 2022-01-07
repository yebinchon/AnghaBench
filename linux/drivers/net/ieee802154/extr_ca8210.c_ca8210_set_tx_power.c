
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {struct ca8210_priv* priv; } ;
struct ca8210_priv {int spi; } ;
typedef int s32 ;


 int PHY_TRANSMIT_POWER ;
 int link_to_linux_err (int ) ;
 int mlme_set_request_sync (int ,int ,int,int*,int ) ;

__attribute__((used)) static int ca8210_set_tx_power(struct ieee802154_hw *hw, s32 mbm)
{
 struct ca8210_priv *priv = hw->priv;

 mbm /= 100;
 return link_to_linux_err(
  mlme_set_request_sync(PHY_TRANSMIT_POWER, 0, 1, &mbm, priv->spi)
 );
}
