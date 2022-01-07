
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htc_target {int hif_dev; TYPE_1__* hif; } ;
struct TYPE_2__ {int (* start ) (int ) ;} ;


 int stub1 (int ) ;

void htc_start(struct htc_target *target)
{
 target->hif->start(target->hif_dev);
}
