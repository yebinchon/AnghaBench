
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {int pdev_dev; TYPE_1__ params; } ;


 int MA_INT_CAUSE_A ;
 int MA_INT_WRAP_STATUS_A ;
 int MA_PARITY_ERROR_STATUS1_A ;
 int MA_PARITY_ERROR_STATUS2_A ;
 int MEM_PERR_INT_CAUSE_F ;
 int MEM_WRAP_ADDRESS_G (int) ;
 int MEM_WRAP_CLIENT_NUM_G (int) ;
 int MEM_WRAP_INT_CAUSE_F ;
 int dev_alert (int ,char*,int,...) ;
 scalar_t__ is_t5 (int ) ;
 int t4_fatal_err (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void ma_intr_handler(struct adapter *adap)
{
 u32 v, status = t4_read_reg(adap, MA_INT_CAUSE_A);

 if (status & MEM_PERR_INT_CAUSE_F) {
  dev_alert(adap->pdev_dev,
     "MA parity error, parity status %#x\n",
     t4_read_reg(adap, MA_PARITY_ERROR_STATUS1_A));
  if (is_t5(adap->params.chip))
   dev_alert(adap->pdev_dev,
      "MA parity error, parity status %#x\n",
      t4_read_reg(adap,
           MA_PARITY_ERROR_STATUS2_A));
 }
 if (status & MEM_WRAP_INT_CAUSE_F) {
  v = t4_read_reg(adap, MA_INT_WRAP_STATUS_A);
  dev_alert(adap->pdev_dev, "MA address wrap-around error by "
     "client %u to address %#x\n",
     MEM_WRAP_CLIENT_NUM_G(v),
     MEM_WRAP_ADDRESS_G(v) << 4);
 }
 t4_write_reg(adap, MA_INT_CAUSE_A, status);
 t4_fatal_err(adap);
}
