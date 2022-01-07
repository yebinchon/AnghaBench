
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmdev {int dummy; } ;


 int FM_DEFAULT_RSSI_THRESHOLD ;
 int FM_DEFAULT_RX_VOLUME ;
 int fm_rx_set_rssi_threshold (struct fmdev*,int ) ;
 int fm_rx_set_volume (struct fmdev*,int ) ;

__attribute__((used)) static int load_default_rx_configuration(struct fmdev *fmdev)
{
 int ret;

 ret = fm_rx_set_volume(fmdev, FM_DEFAULT_RX_VOLUME);
 if (ret < 0)
  return ret;

 return fm_rx_set_rssi_threshold(fmdev, FM_DEFAULT_RSSI_THRESHOLD);
}
