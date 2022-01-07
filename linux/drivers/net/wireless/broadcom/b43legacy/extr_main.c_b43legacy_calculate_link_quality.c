
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int calculation_running; scalar_t__ nr_samples; int channel_at_start; } ;
struct TYPE_3__ {int channel; } ;
struct b43legacy_wldev {TYPE_2__ noisecalc; TYPE_1__ phy; } ;


 int b43legacy_generate_noise_sample (struct b43legacy_wldev*) ;

__attribute__((used)) static void b43legacy_calculate_link_quality(struct b43legacy_wldev *dev)
{


 if (dev->noisecalc.calculation_running)
  return;
 dev->noisecalc.channel_at_start = dev->phy.channel;
 dev->noisecalc.calculation_running = 1;
 dev->noisecalc.nr_samples = 0;

 b43legacy_generate_noise_sample(dev);
}
