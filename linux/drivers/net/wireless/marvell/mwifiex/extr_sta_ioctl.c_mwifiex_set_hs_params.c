
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef void* u32 ;
typedef int u16 ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct mwifiex_ds_hs_cfg {void* gap; void* gpio; void* conditions; int is_invoke_hostcmd; } ;
struct TYPE_2__ {void* conditions; void* gap; void* gpio; } ;
struct mwifiex_adapter {TYPE_1__ hs_cfg; int work_flags; int pps_uapsd_mode; } ;


 int ENOMEM ;
 void* HS_CFG_CANCEL ;


 int HostCmd_CMD_802_11_HS_CFG_ENH ;
 int INFO ;
 int MWIFIEX_IS_HS_CONFIGURED ;
 int MWIFIEX_SYNC_CMD ;
 void* cpu_to_le32 (void*) ;
 void* le32_to_cpu (void*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int const,int ,TYPE_1__*,int) ;
 int test_bit (int ,int *) ;

int mwifiex_set_hs_params(struct mwifiex_private *priv, u16 action,
     int cmd_type, struct mwifiex_ds_hs_cfg *hs_cfg)

{
 struct mwifiex_adapter *adapter = priv->adapter;
 int status = 0;
 u32 prev_cond = 0;

 if (!hs_cfg)
  return -ENOMEM;

 switch (action) {
 case 128:
  if (adapter->pps_uapsd_mode) {
   mwifiex_dbg(adapter, INFO,
        "info: Host Sleep IOCTL\t"
        "is blocked in UAPSD/PPS mode\n");
   status = -1;
   break;
  }
  if (hs_cfg->is_invoke_hostcmd) {
   if (hs_cfg->conditions == HS_CFG_CANCEL) {
    if (!test_bit(MWIFIEX_IS_HS_CONFIGURED,
           &adapter->work_flags))

     break;

    prev_cond = le32_to_cpu(adapter->hs_cfg
       .conditions);
    adapter->hs_cfg.conditions =
      cpu_to_le32(hs_cfg->conditions);
   } else if (hs_cfg->conditions) {
    adapter->hs_cfg.conditions =
      cpu_to_le32(hs_cfg->conditions);
    adapter->hs_cfg.gpio = (u8)hs_cfg->gpio;
    if (hs_cfg->gap)
     adapter->hs_cfg.gap = (u8)hs_cfg->gap;
   } else if (adapter->hs_cfg.conditions ==
       cpu_to_le32(HS_CFG_CANCEL)) {


    status = -1;
    break;
   }

   status = mwifiex_send_cmd(priv,
        HostCmd_CMD_802_11_HS_CFG_ENH,
        128, 0,
        &adapter->hs_cfg,
        cmd_type == MWIFIEX_SYNC_CMD);

   if (hs_cfg->conditions == HS_CFG_CANCEL)

    adapter->hs_cfg.conditions =
      cpu_to_le32(prev_cond);
  } else {
   adapter->hs_cfg.conditions =
      cpu_to_le32(hs_cfg->conditions);
   adapter->hs_cfg.gpio = (u8)hs_cfg->gpio;
   adapter->hs_cfg.gap = (u8)hs_cfg->gap;
  }
  break;
 case 129:
  hs_cfg->conditions = le32_to_cpu(adapter->hs_cfg.conditions);
  hs_cfg->gpio = adapter->hs_cfg.gpio;
  hs_cfg->gap = adapter->hs_cfg.gap;
  break;
 default:
  status = -1;
  break;
 }

 return status;
}
