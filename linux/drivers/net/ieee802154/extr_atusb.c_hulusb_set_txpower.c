
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct ieee802154_hw {int priv; TYPE_2__* phy; } ;
typedef scalar_t__ s32 ;
struct TYPE_3__ {size_t tx_powers_size; scalar_t__* tx_powers; } ;
struct TYPE_4__ {TYPE_1__ supported; } ;


 int EINVAL ;
 int SR_TX_PWR_212 ;
 int atusb_write_subreg (int ,int ,size_t) ;

__attribute__((used)) static int
hulusb_set_txpower(struct ieee802154_hw *hw, s32 mbm)
{
 u32 i;

 for (i = 0; i < hw->phy->supported.tx_powers_size; i++) {
  if (hw->phy->supported.tx_powers[i] == mbm)
   return atusb_write_subreg(hw->priv, SR_TX_PWR_212, i);
 }

 return -EINVAL;
}
