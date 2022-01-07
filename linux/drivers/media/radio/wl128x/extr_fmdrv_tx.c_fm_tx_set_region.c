
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct fmdev {int dummy; } ;
typedef int payload ;


 int EINVAL ;
 scalar_t__ FM_BAND_EUROPE_US ;
 scalar_t__ FM_BAND_JAPAN ;
 int REG_WR ;
 int TX_BAND_SET ;
 int fmc_send_cmd (struct fmdev*,int ,int ,scalar_t__*,int,int *,int *) ;
 int fmerr (char*) ;

int fm_tx_set_region(struct fmdev *fmdev, u8 region)
{
 u16 payload;
 int ret;

 if (region != FM_BAND_EUROPE_US && region != FM_BAND_JAPAN) {
  fmerr("Invalid band\n");
  return -EINVAL;
 }


 payload = (u16)region;
 ret = fmc_send_cmd(fmdev, TX_BAND_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 return 0;
}
