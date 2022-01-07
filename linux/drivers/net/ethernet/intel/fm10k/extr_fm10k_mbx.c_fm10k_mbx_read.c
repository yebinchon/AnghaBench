
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_info {int mbx_hdr; int mbx_reg; int mbmem_reg; int mbmem_len; int mbx_lock; } ;
struct fm10k_hw {int dummy; } ;
typedef int s32 ;


 int FM10K_MBX_ACK ;
 int FM10K_MBX_ACK_INTERRUPT ;
 int FM10K_MBX_ERR_BUSY ;
 int FM10K_MBX_REQ_INTERRUPT ;
 int fm10k_read_reg (struct fm10k_hw*,int) ;
 int fm10k_write_reg (struct fm10k_hw*,int,int) ;

__attribute__((used)) static s32 fm10k_mbx_read(struct fm10k_hw *hw, struct fm10k_mbx_info *mbx)
{

 if (mbx->mbx_hdr)
  return FM10K_MBX_ERR_BUSY;


 if (fm10k_read_reg(hw, mbx->mbx_reg) & FM10K_MBX_REQ_INTERRUPT)
  mbx->mbx_lock = FM10K_MBX_ACK;


 fm10k_write_reg(hw, mbx->mbx_reg,
   FM10K_MBX_REQ_INTERRUPT | FM10K_MBX_ACK_INTERRUPT);


 mbx->mbx_hdr = fm10k_read_reg(hw, mbx->mbmem_reg ^ mbx->mbmem_len);

 return 0;
}
