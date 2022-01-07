
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {struct at86rf230_local* priv; } ;
struct at86rf230_local {int dummy; } ;


 int SR_CSMA_LBT_MODE ;
 int at86rf230_write_subreg (struct at86rf230_local*,int ,int) ;

__attribute__((used)) static int
at86rf230_set_lbt(struct ieee802154_hw *hw, bool on)
{
 struct at86rf230_local *lp = hw->priv;

 return at86rf230_write_subreg(lp, SR_CSMA_LBT_MODE, on);
}
