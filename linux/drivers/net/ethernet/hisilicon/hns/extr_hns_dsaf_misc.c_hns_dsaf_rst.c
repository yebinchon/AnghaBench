
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int DSAF_SUB_SC_NT_RESET_DREQ_REG ;
 int DSAF_SUB_SC_NT_RESET_REQ_REG ;
 int DSAF_SUB_SC_XBAR_RESET_DREQ_REG ;
 int DSAF_SUB_SC_XBAR_RESET_REQ_REG ;
 int RESET_REQ_OR_DREQ ;
 int dsaf_write_sub (struct dsaf_device*,int ,int ) ;

__attribute__((used)) static void hns_dsaf_rst(struct dsaf_device *dsaf_dev, bool dereset)
{
 u32 xbar_reg_addr;
 u32 nt_reg_addr;

 if (!dereset) {
  xbar_reg_addr = DSAF_SUB_SC_XBAR_RESET_REQ_REG;
  nt_reg_addr = DSAF_SUB_SC_NT_RESET_REQ_REG;
 } else {
  xbar_reg_addr = DSAF_SUB_SC_XBAR_RESET_DREQ_REG;
  nt_reg_addr = DSAF_SUB_SC_NT_RESET_DREQ_REG;
 }

 dsaf_write_sub(dsaf_dev, xbar_reg_addr, RESET_REQ_OR_DREQ);
 dsaf_write_sub(dsaf_dev, nt_reg_addr, RESET_REQ_OR_DREQ);
}
