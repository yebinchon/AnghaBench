
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802154_hw {struct at86rf230_local* priv; } ;
struct at86rf230_local {int dummy; } ;


 int SR_MAX_BE ;
 int SR_MAX_CSMA_RETRIES ;
 int SR_MIN_BE ;
 int at86rf230_write_subreg (struct at86rf230_local*,int ,int ) ;

__attribute__((used)) static int
at86rf230_set_csma_params(struct ieee802154_hw *hw, u8 min_be, u8 max_be,
     u8 retries)
{
 struct at86rf230_local *lp = hw->priv;
 int rc;

 rc = at86rf230_write_subreg(lp, SR_MIN_BE, min_be);
 if (rc)
  return rc;

 rc = at86rf230_write_subreg(lp, SR_MAX_BE, max_be);
 if (rc)
  return rc;

 return at86rf230_write_subreg(lp, SR_MAX_CSMA_RETRIES, retries);
}
