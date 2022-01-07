
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct brcmnand_controller {int dummy; } ;


 int BRCMNAND_UNCORR_ADDR ;
 int BRCMNAND_UNCORR_EXT_ADDR ;
 int brcmnand_read_reg (struct brcmnand_controller*,int ) ;

__attribute__((used)) static u64 brcmnand_get_uncorrecc_addr(struct brcmnand_controller *ctrl)
{
 u64 err_addr;

 err_addr = brcmnand_read_reg(ctrl, BRCMNAND_UNCORR_ADDR);
 err_addr |= ((u64)(brcmnand_read_reg(ctrl,
          BRCMNAND_UNCORR_EXT_ADDR)
          & 0xffff) << 32);

 return err_addr;
}
