
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int debugfs_phy; } ;
struct TYPE_3__ {int rfs_chan_spec_scan; } ;
struct ath10k {TYPE_2__ debug; TYPE_1__ spectral; } ;


 int debugfs_create_file (char*,int,int ,struct ath10k*,int *) ;
 int fops_spec_scan_ctl ;
 int fops_spectral_bins ;
 int fops_spectral_count ;
 int relay_open (char*,int ,int,int,int *,int *) ;
 int rfs_spec_scan_cb ;

int ath10k_spectral_create(struct ath10k *ar)
{



 ar->spectral.rfs_chan_spec_scan = relay_open("spectral_scan",
           ar->debug.debugfs_phy,
           1140, 2500,
           &rfs_spec_scan_cb, ((void*)0));
 debugfs_create_file("spectral_scan_ctl",
       0600,
       ar->debug.debugfs_phy, ar,
       &fops_spec_scan_ctl);
 debugfs_create_file("spectral_count",
       0600,
       ar->debug.debugfs_phy, ar,
       &fops_spectral_count);
 debugfs_create_file("spectral_bins",
       0600,
       ar->debug.debugfs_phy, ar,
       &fops_spectral_bins);

 return 0;
}
