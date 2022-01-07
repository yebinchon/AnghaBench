
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {short rssi_threshold; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_1__ rx; } ;


 int ENOMEM ;
 int EPERM ;
 scalar_t__ FM_MODE_RX ;
 int fmerr (char*) ;

int fm_rx_get_rssi_threshold(struct fmdev *fmdev, short *curr_rssi_lvl)
{
 if (fmdev->curr_fmmode != FM_MODE_RX)
  return -EPERM;

 if (curr_rssi_lvl == ((void*)0)) {
  fmerr("Invalid memory\n");
  return -ENOMEM;
 }

 *curr_rssi_lvl = fmdev->rx.rssi_threshold;

 return 0;
}
