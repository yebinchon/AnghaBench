
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpan_phy_cca {int mode; int opt; } ;
struct mrf24j40 {int regmap_short; } ;
struct ieee802154_hw {struct mrf24j40* priv; } ;


 int BBREG2_CCA_MODE_MASK ;
 int BBREG2_CCA_MODE_SHIFT ;
 int EINVAL ;




 int REG_BBREG2 ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int mrf24j40_set_cca_mode(struct ieee802154_hw *hw,
     const struct wpan_phy_cca *cca)
{
 struct mrf24j40 *devrec = hw->priv;
 u8 val;


 switch (cca->mode) {
 case 130:
  val = 2;
  break;
 case 131:
  val = 1;
  break;
 case 129:
  switch (cca->opt) {
  case 128:
   val = 3;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return regmap_update_bits(devrec->regmap_short, REG_BBREG2,
      BBREG2_CCA_MODE_MASK,
      val << BBREG2_CCA_MODE_SHIFT);
}
