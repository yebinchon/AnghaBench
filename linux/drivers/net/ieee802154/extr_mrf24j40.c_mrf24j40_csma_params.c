
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mrf24j40 {int regmap_short; } ;
struct ieee802154_hw {struct mrf24j40* priv; } ;


 int REG_TXMCR ;
 int TXMCR_CSMA_RETRIES_MASK ;
 int TXMCR_CSMA_RETRIES_SHIFT ;
 int TXMCR_MIN_BE_MASK ;
 int TXMCR_MIN_BE_SHIFT ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int
mrf24j40_csma_params(struct ieee802154_hw *hw, u8 min_be, u8 max_be,
       u8 retries)
{
 struct mrf24j40 *devrec = hw->priv;
 u8 val;


 val = min_be << TXMCR_MIN_BE_SHIFT;

 val |= retries << TXMCR_CSMA_RETRIES_SHIFT;

 return regmap_update_bits(devrec->regmap_short, REG_TXMCR,
      TXMCR_MIN_BE_MASK | TXMCR_CSMA_RETRIES_MASK,
      val);
}
