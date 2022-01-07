
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fm10k_mbx_info {scalar_t__ mbx_lock; scalar_t__ mbx_hdr; int mbx_reg; int mbmem_reg; } ;
struct fm10k_hw {int dummy; } ;


 int fm10k_write_reg (struct fm10k_hw*,int ,scalar_t__) ;

__attribute__((used)) static void fm10k_mbx_write(struct fm10k_hw *hw, struct fm10k_mbx_info *mbx)
{
 u32 mbmem = mbx->mbmem_reg;


 fm10k_write_reg(hw, mbmem, mbx->mbx_hdr);


 if (mbx->mbx_lock)
  fm10k_write_reg(hw, mbx->mbx_reg, mbx->mbx_lock);


 mbx->mbx_hdr = 0;
 mbx->mbx_lock = 0;
}
