
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ af_list_max; scalar_t__ afcache_size; int picode; } ;
struct TYPE_4__ {TYPE_1__ stat_info; } ;
struct fmdev {TYPE_2__ rx; } ;


 int FM_NO_PI_CODE ;

void fm_rx_reset_station_info(struct fmdev *fmdev)
{
 fmdev->rx.stat_info.picode = FM_NO_PI_CODE;
 fmdev->rx.stat_info.afcache_size = 0;
 fmdev->rx.stat_info.af_list_max = 0;
}
