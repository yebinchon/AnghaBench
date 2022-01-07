
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {scalar_t__ iw_mode; int firmware_type; int has_ext_scan; scalar_t__ has_hostscan; struct hermes hw; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct hermes_idstring {int val; void* len; } ;
struct cfg80211_ssid {size_t ssid_len; int ssid; } ;
typedef void* __le16 ;
struct TYPE_2__ {int (* write_ltv ) (struct hermes*,int ,int ,int ,struct hermes_idstring*) ;} ;


 int EBUSY ;
 int ENETDOWN ;
 int EOPNOTSUPP ;



 int HERMES_BYTES_TO_RECLEN (size_t) ;
 int HERMES_HOSTSCAN_SYMBOL_BCAST ;
 int HERMES_HOSTSCAN_SYMBOL_ONCE ;
 int HERMES_INQ_CHANNELINFO ;
 int HERMES_INQ_SCAN ;
 int HERMES_RID_CNFHOSTSCAN ;
 int HERMES_RID_CNFHOSTSCAN_SYMBOL ;
 int HERMES_RID_CNFSCANCHANNELS2GHZ ;
 int HERMES_RID_CNFSCANSSID_AGERE ;
 int HERMES_WRITE_RECORD (struct hermes*,int ,int ,void***) ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 int USER_BAP ;
 void* cpu_to_le16 (size_t) ;
 int hermes_inquire (struct hermes*,int ) ;
 int hermes_write_wordrec (struct hermes*,int ,int ,int) ;
 int memcpy (int ,int ,size_t) ;
 int netif_running (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;
 int stub1 (struct hermes*,int ,int ,int ,struct hermes_idstring*) ;

int orinoco_hw_trigger_scan(struct orinoco_private *priv,
       const struct cfg80211_ssid *ssid)
{
 struct net_device *dev = priv->ndev;
 struct hermes *hw = &priv->hw;
 unsigned long flags;
 int err = 0;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;


 if (!netif_running(dev)) {
  err = -ENETDOWN;
  goto out;
 }




 if (priv->iw_mode == NL80211_IFTYPE_MONITOR) {
  err = -EOPNOTSUPP;
  goto out;
 }

 if (priv->has_hostscan) {
  switch (priv->firmware_type) {
  case 128:
   err = hermes_write_wordrec(hw, USER_BAP,
      HERMES_RID_CNFHOSTSCAN_SYMBOL,
      HERMES_HOSTSCAN_SYMBOL_ONCE |
      HERMES_HOSTSCAN_SYMBOL_BCAST);
   break;
  case 129: {
   __le16 req[3];

   req[0] = cpu_to_le16(0x3fff);
   req[1] = cpu_to_le16(0x0001);
   req[2] = 0;
   err = HERMES_WRITE_RECORD(hw, USER_BAP,
        HERMES_RID_CNFHOSTSCAN, &req);
   break;
  }
  case 130:
   if (ssid->ssid_len > 0) {
    struct hermes_idstring idbuf;
    size_t len = ssid->ssid_len;

    idbuf.len = cpu_to_le16(len);
    memcpy(idbuf.val, ssid->ssid, len);

    err = hw->ops->write_ltv(hw, USER_BAP,
            HERMES_RID_CNFSCANSSID_AGERE,
            HERMES_BYTES_TO_RECLEN(len + 2),
            &idbuf);
   } else
    err = hermes_write_wordrec(hw, USER_BAP,
         HERMES_RID_CNFSCANSSID_AGERE,
         0);
   if (err)
    break;

   if (priv->has_ext_scan) {
    err = hermes_write_wordrec(hw, USER_BAP,
      HERMES_RID_CNFSCANCHANNELS2GHZ,
      0x7FFF);
    if (err)
     goto out;

    err = hermes_inquire(hw,
           HERMES_INQ_CHANNELINFO);
   } else
    err = hermes_inquire(hw, HERMES_INQ_SCAN);

   break;
  }
 } else
  err = hermes_inquire(hw, HERMES_INQ_SCAN);

 out:
 orinoco_unlock(priv, &flags);

 return err;
}
