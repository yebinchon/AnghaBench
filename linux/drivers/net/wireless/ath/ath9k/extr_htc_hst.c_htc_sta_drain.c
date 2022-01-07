
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct htc_target {int hif_dev; TYPE_1__* hif; } ;
struct TYPE_2__ {int (* sta_drain ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

void htc_sta_drain(struct htc_target *target, u8 idx)
{
 target->hif->sta_drain(target->hif_dev, idx);
}
