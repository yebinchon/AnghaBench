
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrf24j40 {int regmap_short; } ;
struct ieee802154_hw {struct mrf24j40* priv; } ;
typedef scalar_t__ s32 ;


 int ARRAY_SIZE (scalar_t__**) ;
 int EINVAL ;
 int REG_CCAEDTH ;
 scalar_t__** mrf24j40_ed_levels_map ;
 int regmap_write (int ,int ,scalar_t__) ;

__attribute__((used)) static int mrf24j40_set_cca_ed_level(struct ieee802154_hw *hw, s32 mbm)
{
 struct mrf24j40 *devrec = hw->priv;
 int i;

 for (i = 0; i < ARRAY_SIZE(mrf24j40_ed_levels_map); i++) {
  if (mrf24j40_ed_levels_map[i][0] == mbm)
   return regmap_write(devrec->regmap_short, REG_CCAEDTH,
         mrf24j40_ed_levels_map[i][1]);
 }

 return -EINVAL;
}
