
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {int sched_scanning; TYPE_1__* adapter; } ;
struct mwifiex_bg_scan_cfg {int enable; int action; int bss_type; } ;
struct TYPE_2__ {int dev; } ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_802_11_BG_SCAN_CONFIG ;
 int MWIFIEX_BGSCAN_ACT_SET ;
 int MWIFIEX_BSS_MODE_INFRA ;
 int dev_dbg (int ,char*) ;
 int kfree (struct mwifiex_bg_scan_cfg*) ;
 struct mwifiex_bg_scan_cfg* kzalloc (int,int ) ;
 scalar_t__ mwifiex_send_cmd (struct mwifiex_private*,int ,int ,int ,struct mwifiex_bg_scan_cfg*,int) ;

int mwifiex_stop_bg_scan(struct mwifiex_private *priv)
{
 struct mwifiex_bg_scan_cfg *bgscan_cfg;

 if (!priv->sched_scanning) {
  dev_dbg(priv->adapter->dev, "bgscan already stopped!\n");
  return 0;
 }

 bgscan_cfg = kzalloc(sizeof(*bgscan_cfg), GFP_KERNEL);
 if (!bgscan_cfg)
  return -ENOMEM;

 bgscan_cfg->bss_type = MWIFIEX_BSS_MODE_INFRA;
 bgscan_cfg->action = MWIFIEX_BGSCAN_ACT_SET;
 bgscan_cfg->enable = 0;

 if (mwifiex_send_cmd(priv, HostCmd_CMD_802_11_BG_SCAN_CONFIG,
        HostCmd_ACT_GEN_SET, 0, bgscan_cfg, 1)) {
  kfree(bgscan_cfg);
  return -EFAULT;
 }

 kfree(bgscan_cfg);
 priv->sched_scanning = 0;

 return 0;
}
