
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_hw {struct at86rf230_local* priv; } ;
struct at86rf230_local {int dummy; } ;
typedef int s8 ;


 int SR_MAX_FRAME_RETRIES ;
 int at86rf230_write_subreg (struct at86rf230_local*,int ,int ) ;

__attribute__((used)) static int
at86rf230_set_frame_retries(struct ieee802154_hw *hw, s8 retries)
{
 struct at86rf230_local *lp = hw->priv;

 return at86rf230_write_subreg(lp, SR_MAX_FRAME_RETRIES, retries);
}
