
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int itr_scale; scalar_t__ max_queues; scalar_t__* perm_addr; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ FM10K_ERR_REQUESTS_PENDING ;
 int FM10K_RDBAH (scalar_t__) ;
 int FM10K_RDBAL (scalar_t__) ;
 int FM10K_TDBAH (scalar_t__) ;
 int FM10K_TDBAL (scalar_t__) ;
 int FM10K_TDLEN (scalar_t__) ;
 int FM10K_TDLEN_ITR_SCALE_SHIFT ;
 scalar_t__ fm10k_stop_hw_generic (struct fm10k_hw*) ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int) ;
 scalar_t__ is_valid_ether_addr (scalar_t__*) ;

__attribute__((used)) static s32 fm10k_stop_hw_vf(struct fm10k_hw *hw)
{
 u8 *perm_addr = hw->mac.perm_addr;
 u32 bal = 0, bah = 0, tdlen;
 s32 err;
 u16 i;


 err = fm10k_stop_hw_generic(hw);
 if (err && err != FM10K_ERR_REQUESTS_PENDING)
  return err;


 if (is_valid_ether_addr(perm_addr)) {
  bal = (((u32)perm_addr[3]) << 24) |
        (((u32)perm_addr[4]) << 16) |
        (((u32)perm_addr[5]) << 8);
  bah = (((u32)0xFF) << 24) |
        (((u32)perm_addr[0]) << 16) |
        (((u32)perm_addr[1]) << 8) |
         ((u32)perm_addr[2]);
 }


 tdlen = hw->mac.itr_scale << FM10K_TDLEN_ITR_SCALE_SHIFT;




 for (i = 0; i < hw->mac.max_queues; i++) {
  fm10k_write_reg(hw, FM10K_TDBAL(i), bal);
  fm10k_write_reg(hw, FM10K_TDBAH(i), bah);
  fm10k_write_reg(hw, FM10K_RDBAL(i), bal);
  fm10k_write_reg(hw, FM10K_RDBAH(i), bah);





  fm10k_write_reg(hw, FM10K_TDLEN(i), tdlen);
 }

 return err;
}
