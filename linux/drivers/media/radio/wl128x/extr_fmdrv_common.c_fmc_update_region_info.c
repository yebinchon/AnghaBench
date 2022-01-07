
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int region; } ;
struct fmdev {TYPE_1__ rx; } ;


 int * region_configs ;

void fmc_update_region_info(struct fmdev *fmdev, u8 region_to_set)
{
 fmdev->rx.region = region_configs[region_to_set];
}
