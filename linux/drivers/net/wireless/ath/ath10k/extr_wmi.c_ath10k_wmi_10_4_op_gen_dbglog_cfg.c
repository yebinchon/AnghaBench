
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct wmi_10_4_dbglog_cfg_cmd {void* config_valid; void* config_enable; void* module_valid; void* module_enable; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBGLOG_CFG_LOG_LVL ;
 int ATH10K_DBGLOG_CFG_LOG_LVL_MASK ;
 int ATH10K_DBGLOG_LEVEL_WARN ;
 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int SM (int ,int ) ;
 void* __cpu_to_le32 (int ) ;
 void* __cpu_to_le64 (int) ;
 int __le32_to_cpu (void*) ;
 int __le64_to_cpu (void*) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ,int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_10_4_op_gen_dbglog_cfg(struct ath10k *ar, u64 module_enable,
      u32 log_level)
{
 struct wmi_10_4_dbglog_cfg_cmd *cmd;
 struct sk_buff *skb;
 u32 cfg;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_10_4_dbglog_cfg_cmd *)skb->data;

 if (module_enable) {
  cfg = SM(log_level,
    ATH10K_DBGLOG_CFG_LOG_LVL);
 } else {

  cfg = SM(ATH10K_DBGLOG_LEVEL_WARN,
    ATH10K_DBGLOG_CFG_LOG_LVL);
  module_enable = ~0;
 }

 cmd->module_enable = __cpu_to_le64(module_enable);
 cmd->module_valid = __cpu_to_le64(~0);
 cmd->config_enable = __cpu_to_le32(cfg);
 cmd->config_valid = __cpu_to_le32(ATH10K_DBGLOG_CFG_LOG_LVL_MASK);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi dbglog cfg modules 0x%016llx 0x%016llx config %08x %08x\n",
     __le64_to_cpu(cmd->module_enable),
     __le64_to_cpu(cmd->module_valid),
     __le32_to_cpu(cmd->config_enable),
     __le32_to_cpu(cmd->config_valid));
 return skb;
}
