
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrf24j40 {int regmap_short; } ;
struct ieee802154_hw {struct mrf24j40* priv; } ;


 int BIT_RXIE ;
 int BIT_TXNIE ;
 int REG_INTCON ;
 int dev_dbg (int ,char*) ;
 int printdev (struct mrf24j40*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void mrf24j40_stop(struct ieee802154_hw *hw)
{
 struct mrf24j40 *devrec = hw->priv;

 dev_dbg(printdev(devrec), "stop\n");


 regmap_update_bits(devrec->regmap_short, REG_INTCON,
      BIT_TXNIE | BIT_RXIE, BIT_TXNIE | BIT_RXIE);
}
