
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int af_mode; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_1__ rx; } ;


 int ENOMEM ;
 int EPERM ;
 scalar_t__ FM_MODE_RX ;
 int fmerr (char*) ;

int fm_rx_get_af_switch(struct fmdev *fmdev, u8 *af_mode)
{
 if (fmdev->curr_fmmode != FM_MODE_RX)
  return -EPERM;

 if (af_mode == ((void*)0)) {
  fmerr("Invalid memory\n");
  return -ENOMEM;
 }

 *af_mode = fmdev->rx.af_mode;

 return 0;
}
