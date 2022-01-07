
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802154_hw {struct at86rf230_local* priv; } ;
struct at86rf230_local {TYPE_1__* data; } ;
typedef int s32 ;
struct TYPE_2__ {int (* set_txpower ) (struct at86rf230_local*,int ) ;} ;


 int stub1 (struct at86rf230_local*,int ) ;

__attribute__((used)) static int
at86rf230_set_txpower(struct ieee802154_hw *hw, s32 mbm)
{
 struct at86rf230_local *lp = hw->priv;

 return lp->data->set_txpower(lp, mbm);
}
