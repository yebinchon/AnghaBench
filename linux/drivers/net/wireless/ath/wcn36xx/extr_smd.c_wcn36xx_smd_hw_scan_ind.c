
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_hal_scan_offload_ind {int type; } ;
struct wcn36xx {int hw; int scan_lock; int scan_aborted; int * scan_req; } ;
struct cfg80211_scan_info {int aborted; } ;


 int EIO ;
 int WCN36XX_DBG_HAL ;







 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,int) ;
 int wcn36xx_warn (char*,...) ;

__attribute__((used)) static int wcn36xx_smd_hw_scan_ind(struct wcn36xx *wcn, void *buf, size_t len)
{
 struct wcn36xx_hal_scan_offload_ind *rsp = buf;
 struct cfg80211_scan_info scan_info = {};

 if (len != sizeof(*rsp)) {
  wcn36xx_warn("Corrupted delete scan indication\n");
  return -EIO;
 }

 wcn36xx_dbg(WCN36XX_DBG_HAL, "scan indication (type %x)\n", rsp->type);

 switch (rsp->type) {
 case 132:
 case 133:
  scan_info.aborted = 1;

 case 134:
  mutex_lock(&wcn->scan_lock);
  wcn->scan_req = ((void*)0);
  if (wcn->scan_aborted)
   scan_info.aborted = 1;
  mutex_unlock(&wcn->scan_lock);
  ieee80211_scan_completed(wcn->hw, &scan_info);
  break;
 case 128:
 case 131:
 case 130:
 case 129:
  break;
 default:
  wcn36xx_warn("Unknown scan indication type %x\n", rsp->type);
 }

 return 0;
}
