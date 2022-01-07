
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct ath_spec_scan_priv {int rfs_chan_spec_scan; } ;


 int debugfs_create_file (char*,int,struct dentry*,struct ath_spec_scan_priv*,int *) ;
 int fops_spec_scan_ctl ;
 int fops_spectral_count ;
 int fops_spectral_fft_period ;
 int fops_spectral_period ;
 int fops_spectral_short_repeat ;
 int relay_open (char*,struct dentry*,int,int,int *,int *) ;
 int rfs_spec_scan_cb ;

void ath9k_cmn_spectral_init_debug(struct ath_spec_scan_priv *spec_priv,
       struct dentry *debugfs_phy)
{
 spec_priv->rfs_chan_spec_scan = relay_open("spectral_scan",
         debugfs_phy,
         1024, 256, &rfs_spec_scan_cb,
         ((void*)0));
 if (!spec_priv->rfs_chan_spec_scan)
  return;

 debugfs_create_file("spectral_scan_ctl",
       0600,
       debugfs_phy, spec_priv,
       &fops_spec_scan_ctl);
 debugfs_create_file("spectral_short_repeat",
       0600,
       debugfs_phy, spec_priv,
       &fops_spectral_short_repeat);
 debugfs_create_file("spectral_count",
       0600,
       debugfs_phy, spec_priv,
       &fops_spectral_count);
 debugfs_create_file("spectral_period",
       0600,
       debugfs_phy, spec_priv,
       &fops_spectral_period);
 debugfs_create_file("spectral_fft_period",
       0600,
       debugfs_phy, spec_priv,
       &fops_spectral_fft_period);
}
