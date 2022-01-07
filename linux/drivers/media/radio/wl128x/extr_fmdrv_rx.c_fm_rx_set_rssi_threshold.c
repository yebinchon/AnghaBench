
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {short rssi_threshold; } ;
struct fmdev {TYPE_1__ rx; } ;
typedef int payload ;


 int EINVAL ;
 short FM_RX_RSSI_THRESHOLD_MAX ;
 short FM_RX_RSSI_THRESHOLD_MIN ;
 int REG_WR ;
 int SEARCH_LVL_SET ;
 int fmc_send_cmd (struct fmdev*,int ,int ,scalar_t__*,int,int *,int *) ;
 int fmerr (char*) ;

int fm_rx_set_rssi_threshold(struct fmdev *fmdev, short rssi_lvl_toset)
{
 u16 payload;
 int ret;

 if (rssi_lvl_toset < FM_RX_RSSI_THRESHOLD_MIN ||
   rssi_lvl_toset > FM_RX_RSSI_THRESHOLD_MAX) {
  fmerr("Invalid RSSI threshold level\n");
  return -EINVAL;
 }
 payload = (u16)rssi_lvl_toset;
 ret = fmc_send_cmd(fmdev, SEARCH_LVL_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 fmdev->rx.rssi_threshold = rssi_lvl_toset;

 return 0;
}
