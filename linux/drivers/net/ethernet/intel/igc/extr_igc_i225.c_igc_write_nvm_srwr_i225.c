
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {int (* release ) (struct igc_hw*) ;scalar_t__ (* acquire ) (struct igc_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct igc_hw {TYPE_2__ nvm; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IGC_EERD_EEWR_MAX_COUNT ;
 scalar_t__ igc_write_nvm_srwr (struct igc_hw*,scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ stub1 (struct igc_hw*) ;
 int stub2 (struct igc_hw*) ;

__attribute__((used)) static s32 igc_write_nvm_srwr_i225(struct igc_hw *hw, u16 offset, u16 words,
       u16 *data)
{
 s32 status = 0;
 u16 i, count;





 for (i = 0; i < words; i += IGC_EERD_EEWR_MAX_COUNT) {
  count = (words - i) / IGC_EERD_EEWR_MAX_COUNT > 0 ?
   IGC_EERD_EEWR_MAX_COUNT : (words - i);

  status = hw->nvm.ops.acquire(hw);
  if (status)
   break;

  status = igc_write_nvm_srwr(hw, offset, count, data + i);
  hw->nvm.ops.release(hw);
  if (status)
   break;
 }

 return status;
}
