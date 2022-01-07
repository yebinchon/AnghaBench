
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hash_filter; int chip; } ;
struct adapter {TYPE_1__ params; int pdev_dev; } ;


 int ACTIVEFILTERCOUNTS_F ;
 int HASH_ACTV_HIT_G (int) ;
 int LE_DB_RSP_CODE_0_A ;
 int LE_DB_RSP_CODE_1_A ;
 int TCAM_ACTV_HIT_G (int) ;
 int TP_GLOBAL_CONFIG_A ;
 int dev_err (int ,char*) ;
 scalar_t__ is_offload (struct adapter*) ;
 scalar_t__ is_t6 (int ) ;
 int t4_read_reg (struct adapter*,int ) ;

void init_hash_filter(struct adapter *adap)
{
 u32 reg;




 if (is_t6(adap->params.chip)) {
  if (is_offload(adap)) {
   if (!(t4_read_reg(adap, TP_GLOBAL_CONFIG_A)
      & ACTIVEFILTERCOUNTS_F)) {
    dev_err(adap->pdev_dev, "Invalid hash filter + ofld config\n");
    return;
   }
  } else {
   reg = t4_read_reg(adap, LE_DB_RSP_CODE_0_A);
   if (TCAM_ACTV_HIT_G(reg) != 4) {
    dev_err(adap->pdev_dev, "Invalid hash filter config\n");
    return;
   }

   reg = t4_read_reg(adap, LE_DB_RSP_CODE_1_A);
   if (HASH_ACTV_HIT_G(reg) != 4) {
    dev_err(adap->pdev_dev, "Invalid hash filter config\n");
    return;
   }
  }

 } else {
  dev_err(adap->pdev_dev, "Hash filter supported only on T6\n");
  return;
 }

 adap->params.hash_filter = 1;
}
