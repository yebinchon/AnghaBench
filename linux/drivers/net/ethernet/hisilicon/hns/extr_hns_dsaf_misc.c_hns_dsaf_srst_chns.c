
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int DSAF_SUB_SC_DSAF_RESET_DREQ_REG ;
 int DSAF_SUB_SC_DSAF_RESET_REQ_REG ;
 int dsaf_write_sub (struct dsaf_device*,int ,int ) ;

__attribute__((used)) static void
hns_dsaf_srst_chns(struct dsaf_device *dsaf_dev, u32 msk, bool dereset)
{
 u32 reg_addr;

 if (!dereset)
  reg_addr = DSAF_SUB_SC_DSAF_RESET_REQ_REG;
 else
  reg_addr = DSAF_SUB_SC_DSAF_RESET_DREQ_REG;

 dsaf_write_sub(dsaf_dev, reg_addr, msk);
}
