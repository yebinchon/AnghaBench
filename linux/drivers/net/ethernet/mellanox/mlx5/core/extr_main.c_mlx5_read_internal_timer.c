
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ptp_system_timestamp {int dummy; } ;
struct mlx5_core_dev {TYPE_1__* iseg; } ;
struct TYPE_2__ {int internal_timer_l; int internal_timer_h; } ;


 scalar_t__ ioread32be (int *) ;
 int ptp_read_system_postts (struct ptp_system_timestamp*) ;
 int ptp_read_system_prets (struct ptp_system_timestamp*) ;

u64 mlx5_read_internal_timer(struct mlx5_core_dev *dev,
        struct ptp_system_timestamp *sts)
{
 u32 timer_h, timer_h1, timer_l;

 timer_h = ioread32be(&dev->iseg->internal_timer_h);
 ptp_read_system_prets(sts);
 timer_l = ioread32be(&dev->iseg->internal_timer_l);
 ptp_read_system_postts(sts);
 timer_h1 = ioread32be(&dev->iseg->internal_timer_h);
 if (timer_h != timer_h1) {

  ptp_read_system_prets(sts);
  timer_l = ioread32be(&dev->iseg->internal_timer_l);
  ptp_read_system_postts(sts);
 }

 return (u64)timer_l | (u64)timer_h1 << 32;
}
