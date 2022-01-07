
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef struct intr_info {int member_0; char* member_1; int member_2; int member_3; int const member_4; } const intr_info ;
struct TYPE_2__ {int chip; } ;
struct adapter {int pdev_dev; TYPE_1__ params; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;



 int ERROR_QID_G (int) ;
 int ERROR_QID_VALID_F ;
 int SGE_ERROR_STATS_A ;
 int SGE_INT_CAUSE1_A ;
 int SGE_INT_CAUSE2_A ;
 int SGE_INT_CAUSE3_A ;
 int UNCAPTURED_ERROR_F ;
 int dev_alert (int ,char*,unsigned long long) ;
 int dev_err (int ,char*,...) ;


 int t4_fatal_err (struct adapter*) ;
 int t4_handle_intr_status (struct adapter*,int ,struct intr_info const*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void sge_intr_handler(struct adapter *adapter)
{
 u64 v;
 u32 err;

 static const struct intr_info sge_intr_info[] = {
  { 138,
    "SGE received CPL exceeding IQE size", -1, 1 },
  { 131,
    "SGE GTS CIDX increment too large", -1, 0 },
  { 137, "SGE received 0-length CPL", -1, 0 },
  { 144, ((void*)0), -1, 0, 128 },
  { 135 | 136,
    "SGE IQID > 1023 received CPL for FL", -1, 0 },
  { 139, "SGE DBP 3 pidx increment too large", -1,
    0 },
  { 140, "SGE DBP 2 pidx increment too large", -1,
    0 },
  { 141, "SGE DBP 1 pidx increment too large", -1,
    0 },
  { 142, "SGE DBP 0 pidx increment too large", -1,
    0 },
  { 132,
    "SGE too many priority ingress contexts", -1, 0 },
  { 130, "SGE illegal ingress QID", -1, 0 },
  { 143, "SGE illegal egress QID", -1, 0 },
  { 0 }
 };

 static struct intr_info t4t5_sge_intr_info[] = {
  { 134, ((void*)0), -1, 0, 129 },
  { 145, ((void*)0), -1, 0, 128 },
  { 133,
    "SGE too many priority egress contexts", -1, 0 },
  { 0 }
 };

 v = (u64)t4_read_reg(adapter, SGE_INT_CAUSE1_A) |
  ((u64)t4_read_reg(adapter, SGE_INT_CAUSE2_A) << 32);
 if (v) {
  dev_alert(adapter->pdev_dev, "SGE parity error (%#llx)\n",
    (unsigned long long)v);
  t4_write_reg(adapter, SGE_INT_CAUSE1_A, v);
  t4_write_reg(adapter, SGE_INT_CAUSE2_A, v >> 32);
 }

 v |= t4_handle_intr_status(adapter, SGE_INT_CAUSE3_A, sge_intr_info);
 if (CHELSIO_CHIP_VERSION(adapter->params.chip) <= CHELSIO_T5)
  v |= t4_handle_intr_status(adapter, SGE_INT_CAUSE3_A,
        t4t5_sge_intr_info);

 err = t4_read_reg(adapter, SGE_ERROR_STATS_A);
 if (err & ERROR_QID_VALID_F) {
  dev_err(adapter->pdev_dev, "SGE error for queue %u\n",
   ERROR_QID_G(err));
  if (err & UNCAPTURED_ERROR_F)
   dev_err(adapter->pdev_dev,
    "SGE UNCAPTURED_ERROR set (clearing)\n");
  t4_write_reg(adapter, SGE_ERROR_STATS_A, ERROR_QID_VALID_F |
        UNCAPTURED_ERROR_F);
 }

 if (v != 0)
  t4_fatal_err(adapter);
}
