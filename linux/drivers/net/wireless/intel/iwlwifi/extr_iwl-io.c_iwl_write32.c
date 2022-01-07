
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dev; } ;


 int iwl_trans_write32 (struct iwl_trans*,int ,int ) ;
 int trace_iwlwifi_dev_iowrite32 (int ,int ,int ) ;

void iwl_write32(struct iwl_trans *trans, u32 ofs, u32 val)
{
 trace_iwlwifi_dev_iowrite32(trans->dev, ofs, val);
 iwl_trans_write32(trans, ofs, val);
}
