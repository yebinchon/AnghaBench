
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {struct cc2520_private* priv; } ;
struct cc2520_private {int amplified; } ;
typedef int s32 ;


 int cc2520_cc2591_set_tx_power (struct cc2520_private*,int ) ;
 int cc2520_set_tx_power (struct cc2520_private*,int ) ;

__attribute__((used)) static int
cc2520_set_txpower(struct ieee802154_hw *hw, s32 mbm)
{
 struct cc2520_private *priv = hw->priv;

 if (!priv->amplified)
  return cc2520_set_tx_power(priv, mbm);

 return cc2520_cc2591_set_tx_power(priv, mbm);
}
