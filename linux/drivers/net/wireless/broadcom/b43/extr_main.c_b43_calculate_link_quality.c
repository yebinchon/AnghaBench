
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int calculation_running; scalar_t__ nr_samples; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct b43_wldev {TYPE_2__ noisecalc; TYPE_1__ phy; } ;


 scalar_t__ B43_PHYTYPE_G ;
 int b43_generate_noise_sample (struct b43_wldev*) ;

__attribute__((used)) static void b43_calculate_link_quality(struct b43_wldev *dev)
{


 if (dev->phy.type != B43_PHYTYPE_G)
  return;
 if (dev->noisecalc.calculation_running)
  return;
 dev->noisecalc.calculation_running = 1;
 dev->noisecalc.nr_samples = 0;

 b43_generate_noise_sample(dev);
}
