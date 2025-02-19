
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wtbl_req_hdr {int operation; int wlan_idx; } ;
struct TYPE_3__ {int idx; } ;
struct TYPE_4__ {TYPE_1__ wcid; } ;
struct mt7615_vif {TYPE_2__ sta; } ;
struct mt7615_dev {int mt76; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
typedef int req ;


 int MCU_EXT_CMD_WTBL_UPDATE ;
 int WTBL_RESET_AND_SET ;
 int __mt76_mcu_send_msg (int *,int ,struct wtbl_req_hdr*,int,int) ;
 int mt7615_mcu_add_wtbl_bmc (struct mt7615_dev*,struct mt7615_vif*) ;

int mt7615_mcu_wtbl_bmc(struct mt7615_dev *dev,
   struct ieee80211_vif *vif, bool enable)
{
 struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;

 if (!enable) {
  struct wtbl_req_hdr req = {
   .wlan_idx = mvif->sta.wcid.idx,
   .operation = WTBL_RESET_AND_SET,
  };

  return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_WTBL_UPDATE,
        &req, sizeof(req), 1);
 }

 return mt7615_mcu_add_wtbl_bmc(dev, mvif);
}
