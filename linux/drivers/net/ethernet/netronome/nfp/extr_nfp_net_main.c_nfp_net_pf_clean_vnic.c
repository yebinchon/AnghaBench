
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int app; } ;
struct nfp_net {scalar_t__ port; int debugfs_dir; } ;


 int nfp_app_vnic_clean (int ,struct nfp_net*) ;
 int nfp_devlink_port_type_clear (scalar_t__) ;
 int nfp_devlink_port_unregister (scalar_t__) ;
 int nfp_net_clean (struct nfp_net*) ;
 int nfp_net_debugfs_dir_clean (int *) ;
 scalar_t__ nfp_net_is_data_vnic (struct nfp_net*) ;

__attribute__((used)) static void nfp_net_pf_clean_vnic(struct nfp_pf *pf, struct nfp_net *nn)
{
 if (nfp_net_is_data_vnic(nn))
  nfp_app_vnic_clean(pf->app, nn);
 if (nn->port)
  nfp_devlink_port_type_clear(nn->port);
 nfp_net_debugfs_dir_clean(&nn->debugfs_dir);
 nfp_net_clean(nn);
 if (nn->port)
  nfp_devlink_port_unregister(nn->port);
}
