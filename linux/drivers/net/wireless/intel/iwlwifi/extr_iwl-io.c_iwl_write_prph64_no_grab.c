
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iwl_trans {int dev; } ;


 int iwl_write_prph_no_grab (struct iwl_trans*,int,int) ;
 int trace_iwlwifi_dev_iowrite_prph64 (int ,int,int) ;

void iwl_write_prph64_no_grab(struct iwl_trans *trans, u64 ofs, u64 val)
{
 trace_iwlwifi_dev_iowrite_prph64(trans->dev, ofs, val);
 iwl_write_prph_no_grab(trans, ofs, val & 0xffffffff);
 iwl_write_prph_no_grab(trans, ofs + 4, val >> 32);
}
