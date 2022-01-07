
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int (* release ) (struct e1000_hw*) ;int (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_EERD_EEWR_MAX_COUNT ;
 scalar_t__ E1000_ERR_SWFW_SYNC ;
 scalar_t__ igb_write_nvm_srwr (struct e1000_hw*,scalar_t__,scalar_t__,scalar_t__*) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 igb_write_nvm_srwr_i210(struct e1000_hw *hw, u16 offset, u16 words,
       u16 *data)
{
 s32 status = 0;
 u16 i, count;





 for (i = 0; i < words; i += E1000_EERD_EEWR_MAX_COUNT) {
  count = (words - i) / E1000_EERD_EEWR_MAX_COUNT > 0 ?
   E1000_EERD_EEWR_MAX_COUNT : (words - i);
  if (!(hw->nvm.ops.acquire(hw))) {
   status = igb_write_nvm_srwr(hw, offset, count,
            data + i);
   hw->nvm.ops.release(hw);
  } else {
   status = E1000_ERR_SWFW_SYNC;
  }

  if (status)
   break;
 }

 return status;
}
