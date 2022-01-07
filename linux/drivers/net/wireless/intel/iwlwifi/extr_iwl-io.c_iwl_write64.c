
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct iwl_trans {int dev; } ;


 int iwl_trans_write32 (struct iwl_trans*,scalar_t__,int ) ;
 int lower_32_bits (scalar_t__) ;
 int trace_iwlwifi_dev_iowrite64 (int ,scalar_t__,scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

void iwl_write64(struct iwl_trans *trans, u64 ofs, u64 val)
{
 trace_iwlwifi_dev_iowrite64(trans->dev, ofs, val);
 iwl_trans_write32(trans, ofs, lower_32_bits(val));
 iwl_trans_write32(trans, ofs + 4, upper_32_bits(val));
}
