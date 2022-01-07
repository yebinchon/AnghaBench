
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct ieee802154_hw {TYPE_2__* phy; struct at86rf230_local* priv; } ;
struct at86rf230_local {int dummy; } ;
typedef scalar_t__ s32 ;
struct TYPE_3__ {size_t cca_ed_levels_size; scalar_t__* cca_ed_levels; } ;
struct TYPE_4__ {TYPE_1__ supported; } ;


 int EINVAL ;
 int SR_CCA_ED_THRES ;
 int at86rf230_write_subreg (struct at86rf230_local*,int ,size_t) ;

__attribute__((used)) static int
at86rf230_set_cca_ed_level(struct ieee802154_hw *hw, s32 mbm)
{
 struct at86rf230_local *lp = hw->priv;
 u32 i;

 for (i = 0; i < hw->phy->supported.cca_ed_levels_size; i++) {
  if (hw->phy->supported.cca_ed_levels[i] == mbm)
   return at86rf230_write_subreg(lp, SR_CCA_ED_THRES, i);
 }

 return -EINVAL;
}
