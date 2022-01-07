
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int flag; } ;
struct TYPE_4__ {TYPE_1__ rds; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_2__ rx; } ;


 int ENOMEM ;
 int EPERM ;
 scalar_t__ FM_MODE_RX ;
 int fmerr (char*) ;

int fm_rx_get_rds_mode(struct fmdev *fmdev, u8 *curr_rds_en_dis)
{
 if (fmdev->curr_fmmode != FM_MODE_RX)
  return -EPERM;

 if (curr_rds_en_dis == ((void*)0)) {
  fmerr("Invalid memory\n");
  return -ENOMEM;
 }

 *curr_rds_en_dis = fmdev->rx.rds.flag;

 return 0;
}
