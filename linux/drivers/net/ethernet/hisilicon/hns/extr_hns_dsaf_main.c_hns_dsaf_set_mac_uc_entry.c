
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct dsaf_tbl_tcam_ucast_cfg {int tbl_ucast_item_vld; int tbl_ucast_out_port; scalar_t__ tbl_ucast_dvc; scalar_t__ tbl_ucast_old_en; scalar_t__ tbl_ucast_mac_discard; } ;
struct dsaf_tbl_tcam_data {int tbl_tcam_data_low; int tbl_tcam_data_high; } ;
struct TYPE_12__ {int val; } ;
struct TYPE_9__ {int val; } ;
struct dsaf_drv_tbl_tcam_key {TYPE_6__ low; TYPE_3__ high; } ;
struct TYPE_10__ {int val; } ;
struct TYPE_8__ {int val; } ;
struct TYPE_11__ {TYPE_4__ low; TYPE_2__ high; } ;
struct dsaf_drv_soft_mac_tbl {TYPE_5__ tcam_key; scalar_t__ index; } ;
struct dsaf_drv_priv {struct dsaf_drv_soft_mac_tbl* soft_mac_tbl; } ;
struct dsaf_drv_mac_single_dest_entry {int port_num; int addr; int in_port_num; int in_vlan_id; } ;
struct TYPE_7__ {int name; } ;
struct dsaf_device {TYPE_1__ ae_dev; int dev; } ;


 scalar_t__ DSAF_INVALID_ENTRY_IDX ;
 int EINVAL ;
 scalar_t__ MAC_IS_ALL_ZEROS (int ) ;
 scalar_t__ MAC_IS_BROADCAST (int ) ;
 scalar_t__ MAC_IS_MULTICAST (int ) ;
 int dev_dbg (int ,char*,int ,int ,int ,scalar_t__) ;
 int dev_err (int ,char*,int ,int ,...) ;
 scalar_t__ hns_dsaf_dev_priv (struct dsaf_device*) ;
 scalar_t__ hns_dsaf_find_empty_mac_entry (struct dsaf_device*) ;
 scalar_t__ hns_dsaf_find_soft_mac_entry (struct dsaf_device*,struct dsaf_drv_tbl_tcam_key*) ;
 int hns_dsaf_set_mac_key (struct dsaf_device*,struct dsaf_drv_tbl_tcam_key*,int ,int ,int ) ;
 int hns_dsaf_tcam_uc_cfg (struct dsaf_device*,scalar_t__,struct dsaf_tbl_tcam_data*,struct dsaf_tbl_tcam_ucast_cfg*) ;

int hns_dsaf_set_mac_uc_entry(
 struct dsaf_device *dsaf_dev,
 struct dsaf_drv_mac_single_dest_entry *mac_entry)
{
 u16 entry_index = DSAF_INVALID_ENTRY_IDX;
 struct dsaf_drv_tbl_tcam_key mac_key;
 struct dsaf_tbl_tcam_ucast_cfg mac_data;
 struct dsaf_drv_priv *priv =
     (struct dsaf_drv_priv *)hns_dsaf_dev_priv(dsaf_dev);
 struct dsaf_drv_soft_mac_tbl *soft_mac_entry = priv->soft_mac_tbl;
 struct dsaf_tbl_tcam_data tcam_data;


 if (MAC_IS_ALL_ZEROS(mac_entry->addr) ||
     MAC_IS_BROADCAST(mac_entry->addr) ||
     MAC_IS_MULTICAST(mac_entry->addr)) {
  dev_err(dsaf_dev->dev, "set_uc %s Mac %pM err!\n",
   dsaf_dev->ae_dev.name, mac_entry->addr);
  return -EINVAL;
 }


 hns_dsaf_set_mac_key(dsaf_dev, &mac_key, mac_entry->in_vlan_id,
        mac_entry->in_port_num, mac_entry->addr);


 entry_index = hns_dsaf_find_soft_mac_entry(dsaf_dev, &mac_key);
 if (entry_index == DSAF_INVALID_ENTRY_IDX) {

  entry_index = hns_dsaf_find_empty_mac_entry(dsaf_dev);
  if (entry_index == DSAF_INVALID_ENTRY_IDX) {

   dev_err(dsaf_dev->dev,
    "set_uc_entry failed, %s Mac key(%#x:%#x)\n",
    dsaf_dev->ae_dev.name,
    mac_key.high.val, mac_key.low.val);
   return -EINVAL;
  }
 }

 dev_dbg(dsaf_dev->dev,
  "set_uc_entry, %s Mac key(%#x:%#x) entry_index%d\n",
  dsaf_dev->ae_dev.name, mac_key.high.val,
  mac_key.low.val, entry_index);


 mac_data.tbl_ucast_item_vld = 1;
 mac_data.tbl_ucast_mac_discard = 0;
 mac_data.tbl_ucast_old_en = 0;

 mac_data.tbl_ucast_dvc = 0;
 mac_data.tbl_ucast_out_port = mac_entry->port_num;
 tcam_data.tbl_tcam_data_high = mac_key.high.val;
 tcam_data.tbl_tcam_data_low = mac_key.low.val;

 hns_dsaf_tcam_uc_cfg(dsaf_dev, entry_index, &tcam_data, &mac_data);


 soft_mac_entry += entry_index;
 soft_mac_entry->index = entry_index;
 soft_mac_entry->tcam_key.high.val = mac_key.high.val;
 soft_mac_entry->tcam_key.low.val = mac_key.low.val;

 return 0;
}
