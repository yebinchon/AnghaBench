
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrf24j40 {int regmap_short; } ;
struct ieee802154_hw {struct mrf24j40* priv; } ;


 int BIT_ERRPKT ;
 int BIT_NOACKRSP ;
 int BIT_PROMI ;
 int REG_RXMCR ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int mrf24j40_set_promiscuous_mode(struct ieee802154_hw *hw, bool on)
{
 struct mrf24j40 *devrec = hw->priv;
 int ret;

 if (on) {

  ret = regmap_update_bits(devrec->regmap_short, REG_RXMCR,
      BIT_PROMI | BIT_ERRPKT | BIT_NOACKRSP,
      BIT_PROMI | BIT_ERRPKT | BIT_NOACKRSP);
 } else {

  ret = regmap_update_bits(devrec->regmap_short, REG_RXMCR,
      BIT_PROMI | BIT_ERRPKT | BIT_NOACKRSP,
      0);
 }

 return ret;
}
