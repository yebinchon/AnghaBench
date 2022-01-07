
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int reset_offset; int dev; } ;


 int DSAF_SUB_SC_PPE_RESET_DREQ_REG ;
 int DSAF_SUB_SC_PPE_RESET_REQ_REG ;
 int DSAF_SUB_SC_RCB_PPE_COM_RESET_DREQ_REG ;
 int DSAF_SUB_SC_RCB_PPE_COM_RESET_REQ_REG ;
 int HNS_DSAF_IS_DEBUG (struct dsaf_device*) ;
 int RESET_REQ_OR_DREQ ;
 int dev_of_node (int ) ;
 int dsaf_write_sub (struct dsaf_device*,int,int) ;

__attribute__((used)) static void hns_ppe_com_srst(struct dsaf_device *dsaf_dev, bool dereset)
{
 u32 reg_val;
 u32 reg_addr;

 if (!(dev_of_node(dsaf_dev->dev)))
  return;

 if (!HNS_DSAF_IS_DEBUG(dsaf_dev)) {
  reg_val = RESET_REQ_OR_DREQ;
  if (!dereset)
   reg_addr = DSAF_SUB_SC_RCB_PPE_COM_RESET_REQ_REG;
  else
   reg_addr = DSAF_SUB_SC_RCB_PPE_COM_RESET_DREQ_REG;

 } else {
  reg_val = 0x100 << dsaf_dev->reset_offset;

  if (!dereset)
   reg_addr = DSAF_SUB_SC_PPE_RESET_REQ_REG;
  else
   reg_addr = DSAF_SUB_SC_PPE_RESET_DREQ_REG;
 }

 dsaf_write_sub(dsaf_dev, reg_addr, reg_val);
}
