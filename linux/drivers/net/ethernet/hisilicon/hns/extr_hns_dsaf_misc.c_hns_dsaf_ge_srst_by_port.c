
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dsaf_device {int reset_offset; int dsaf_ver; TYPE_1__** mac_cb; } ;
struct TYPE_2__ {int port_rst_off; } ;


 scalar_t__ AE_IS_VER1 (int ) ;
 int DSAF_GE_NUM ;
 int DSAF_SUB_SC_GE_RESET_DREQ0_REG ;
 int DSAF_SUB_SC_GE_RESET_DREQ1_REG ;
 int DSAF_SUB_SC_GE_RESET_REQ0_REG ;
 int DSAF_SUB_SC_GE_RESET_REQ1_REG ;
 int DSAF_SUB_SC_PPE_RESET_DREQ_REG ;
 int DSAF_SUB_SC_PPE_RESET_REQ_REG ;
 int HNS_DSAF_IS_DEBUG (struct dsaf_device*) ;
 int dsaf_write_sub (struct dsaf_device*,int ,int) ;

__attribute__((used)) static void hns_dsaf_ge_srst_by_port(struct dsaf_device *dsaf_dev, u32 port,
         bool dereset)
{
 u32 reg_val_1;
 u32 reg_val_2;
 u32 port_rst_off;

 if (port >= DSAF_GE_NUM)
  return;

 if (!HNS_DSAF_IS_DEBUG(dsaf_dev)) {
  reg_val_1 = 0x1 << port;
  port_rst_off = dsaf_dev->mac_cb[port]->port_rst_off;

  reg_val_2 = AE_IS_VER1(dsaf_dev->dsaf_ver) ?
    0x1041041 : 0x2082082;
  reg_val_2 <<= port_rst_off;

  if (!dereset) {
   dsaf_write_sub(dsaf_dev, DSAF_SUB_SC_GE_RESET_REQ1_REG,
           reg_val_1);

   dsaf_write_sub(dsaf_dev, DSAF_SUB_SC_GE_RESET_REQ0_REG,
           reg_val_2);
  } else {
   dsaf_write_sub(dsaf_dev, DSAF_SUB_SC_GE_RESET_DREQ0_REG,
           reg_val_2);

   dsaf_write_sub(dsaf_dev, DSAF_SUB_SC_GE_RESET_DREQ1_REG,
           reg_val_1);
  }
 } else {
  reg_val_1 = 0x15540;
  reg_val_2 = AE_IS_VER1(dsaf_dev->dsaf_ver) ? 0x100 : 0x40;

  reg_val_1 <<= dsaf_dev->reset_offset;
  reg_val_2 <<= dsaf_dev->reset_offset;

  if (!dereset) {
   dsaf_write_sub(dsaf_dev, DSAF_SUB_SC_GE_RESET_REQ1_REG,
           reg_val_1);

   dsaf_write_sub(dsaf_dev, DSAF_SUB_SC_PPE_RESET_REQ_REG,
           reg_val_2);
  } else {
   dsaf_write_sub(dsaf_dev, DSAF_SUB_SC_GE_RESET_DREQ1_REG,
           reg_val_1);

   dsaf_write_sub(dsaf_dev, DSAF_SUB_SC_PPE_RESET_DREQ_REG,
           reg_val_2);
  }
 }
}
