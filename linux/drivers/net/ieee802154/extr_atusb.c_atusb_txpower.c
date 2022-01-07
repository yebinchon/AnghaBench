
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802154_hw {struct atusb* priv; } ;
struct atusb {TYPE_1__* data; } ;
typedef int s32 ;
struct TYPE_2__ {int (* set_txpower ) (struct ieee802154_hw*,int ) ;} ;


 int ENOTSUPP ;
 int stub1 (struct ieee802154_hw*,int ) ;

__attribute__((used)) static int
atusb_txpower(struct ieee802154_hw *hw, s32 mbm)
{
 struct atusb *atusb = hw->priv;

 if (atusb->data)
  return atusb->data->set_txpower(hw, mbm);
 else
  return -ENOTSUPP;
}
