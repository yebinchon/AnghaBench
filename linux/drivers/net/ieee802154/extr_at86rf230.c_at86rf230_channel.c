
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee802154_hw {struct at86rf230_local* priv; } ;
struct at86rf230_local {scalar_t__ cal_timeout; TYPE_1__* data; } ;
struct TYPE_2__ {int (* set_channel ) (struct at86rf230_local*,int ,int ) ;scalar_t__ t_channel_switch; } ;


 scalar_t__ AT86RF2XX_CAL_LOOP_TIMEOUT ;
 scalar_t__ jiffies ;
 int stub1 (struct at86rf230_local*,int ,int ) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
at86rf230_channel(struct ieee802154_hw *hw, u8 page, u8 channel)
{
 struct at86rf230_local *lp = hw->priv;
 int rc;

 rc = lp->data->set_channel(lp, page, channel);

 usleep_range(lp->data->t_channel_switch,
       lp->data->t_channel_switch + 10);

 lp->cal_timeout = jiffies + AT86RF2XX_CAL_LOOP_TIMEOUT;
 return rc;
}
