
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct mwifiex_types_power_group {void* length; void* type; } ;
struct mwifiex_private {scalar_t__ min_tx_power_level; scalar_t__ max_tx_power_level; int adapter; } ;
struct mwifiex_power_group {int first_rate_code; int last_rate_code; int ht_bandwidth; void* power_max; void* power_min; scalar_t__ power_step; void* modulation_class; } ;
struct mwifiex_power_cfg {scalar_t__ is_power_fixed; int is_power_auto; scalar_t__ power_level; } ;
struct host_cmd_ds_txpwr_cfg {int mode; void* action; } ;
typedef void* s8 ;


 int ENOMEM ;
 int ERROR ;
 int GFP_KERNEL ;
 int HT_BW_20 ;
 int HT_BW_40 ;
 int HostCmd_ACT_GEN_SET ;
 int HostCmd_CMD_TXPWR_CFG ;
 void* MOD_CLASS_HR_DSSS ;
 void* MOD_CLASS_HT ;
 void* MOD_CLASS_OFDM ;
 int MWIFIEX_SIZE_OF_CMD_BUFFER ;
 int TLV_TYPE_POWER_GROUP ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int mwifiex_dbg (int ,int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int mwifiex_send_cmd (struct mwifiex_private*,int ,int,int ,int *,int) ;

int mwifiex_set_tx_power(struct mwifiex_private *priv,
    struct mwifiex_power_cfg *power_cfg)
{
 int ret;
 struct host_cmd_ds_txpwr_cfg *txp_cfg;
 struct mwifiex_types_power_group *pg_tlv;
 struct mwifiex_power_group *pg;
 u8 *buf;
 u16 dbm = 0;

 if (!power_cfg->is_power_auto) {
  dbm = (u16) power_cfg->power_level;
  if ((dbm < priv->min_tx_power_level) ||
      (dbm > priv->max_tx_power_level)) {
   mwifiex_dbg(priv->adapter, ERROR,
        "txpower value %d dBm\t"
        "is out of range (%d dBm-%d dBm)\n",
        dbm, priv->min_tx_power_level,
        priv->max_tx_power_level);
   return -1;
  }
 }
 buf = kzalloc(MWIFIEX_SIZE_OF_CMD_BUFFER, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 txp_cfg = (struct host_cmd_ds_txpwr_cfg *) buf;
 txp_cfg->action = cpu_to_le16(HostCmd_ACT_GEN_SET);
 if (!power_cfg->is_power_auto) {
  u16 dbm_min = power_cfg->is_power_fixed ?
         dbm : priv->min_tx_power_level;

  txp_cfg->mode = cpu_to_le32(1);
  pg_tlv = (struct mwifiex_types_power_group *)
    (buf + sizeof(struct host_cmd_ds_txpwr_cfg));
  pg_tlv->type = cpu_to_le16(TLV_TYPE_POWER_GROUP);
  pg_tlv->length =
   cpu_to_le16(4 * sizeof(struct mwifiex_power_group));
  pg = (struct mwifiex_power_group *)
       (buf + sizeof(struct host_cmd_ds_txpwr_cfg)
        + sizeof(struct mwifiex_types_power_group));

  pg->first_rate_code = 0x00;
  pg->last_rate_code = 0x03;
  pg->modulation_class = MOD_CLASS_HR_DSSS;
  pg->power_step = 0;
  pg->power_min = (s8) dbm_min;
  pg->power_max = (s8) dbm;
  pg++;

  pg->first_rate_code = 0x00;
  pg->last_rate_code = 0x07;
  pg->modulation_class = MOD_CLASS_OFDM;
  pg->power_step = 0;
  pg->power_min = (s8) dbm_min;
  pg->power_max = (s8) dbm;
  pg++;

  pg->first_rate_code = 0x00;
  pg->last_rate_code = 0x20;
  pg->modulation_class = MOD_CLASS_HT;
  pg->power_step = 0;
  pg->power_min = (s8) dbm_min;
  pg->power_max = (s8) dbm;
  pg->ht_bandwidth = HT_BW_20;
  pg++;

  pg->first_rate_code = 0x00;
  pg->last_rate_code = 0x20;
  pg->modulation_class = MOD_CLASS_HT;
  pg->power_step = 0;
  pg->power_min = (s8) dbm_min;
  pg->power_max = (s8) dbm;
  pg->ht_bandwidth = HT_BW_40;
 }
 ret = mwifiex_send_cmd(priv, HostCmd_CMD_TXPWR_CFG,
          HostCmd_ACT_GEN_SET, 0, buf, 1);

 kfree(buf);
 return ret;
}
