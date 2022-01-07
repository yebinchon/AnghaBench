
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rfs_chan_spec_scan; } ;
struct ath10k {TYPE_1__ spectral; } ;


 int relay_close (int *) ;

void ath10k_spectral_destroy(struct ath10k *ar)
{
 if (ar->spectral.rfs_chan_spec_scan) {
  relay_close(ar->spectral.rfs_chan_spec_scan);
  ar->spectral.rfs_chan_spec_scan = ((void*)0);
 }
}
