
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ deemphasis_mode; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_1__ rx; } ;
typedef int payload ;


 int DEMPH_MODE_SET ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ FM_MODE_RX ;
 scalar_t__ FM_RX_EMPHASIS_FILTER_50_USEC ;
 scalar_t__ FM_RX_EMPHASIS_FILTER_75_USEC ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,scalar_t__*,int,int *,int *) ;
 int fmerr (char*,scalar_t__) ;

int fm_rx_set_deemphasis_mode(struct fmdev *fmdev, u16 mode)
{
 u16 payload;
 int ret;

 if (fmdev->curr_fmmode != FM_MODE_RX)
  return -EPERM;

 if (mode != FM_RX_EMPHASIS_FILTER_50_USEC &&
   mode != FM_RX_EMPHASIS_FILTER_75_USEC) {
  fmerr("Invalid rx de-emphasis mode (%d)\n", mode);
  return -EINVAL;
 }

 payload = mode;
 ret = fmc_send_cmd(fmdev, DEMPH_MODE_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 fmdev->rx.deemphasis_mode = mode;

 return 0;
}
