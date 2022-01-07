
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int app; int ddir; } ;
struct nfp_net {unsigned int id; scalar_t__ port; int debugfs_dir; } ;


 int nfp_app_vnic_init (int ,struct nfp_net*) ;
 int nfp_devlink_port_register (int ,scalar_t__) ;
 int nfp_devlink_port_type_clear (scalar_t__) ;
 int nfp_devlink_port_type_eth_set (scalar_t__) ;
 int nfp_devlink_port_unregister (scalar_t__) ;
 int nfp_net_clean (struct nfp_net*) ;
 int nfp_net_debugfs_dir_clean (int *) ;
 int nfp_net_debugfs_vnic_add (struct nfp_net*,int ) ;
 int nfp_net_info (struct nfp_net*) ;
 int nfp_net_init (struct nfp_net*) ;
 scalar_t__ nfp_net_is_data_vnic (struct nfp_net*) ;

__attribute__((used)) static int
nfp_net_pf_init_vnic(struct nfp_pf *pf, struct nfp_net *nn, unsigned int id)
{
 int err;

 nn->id = id;

 if (nn->port) {
  err = nfp_devlink_port_register(pf->app, nn->port);
  if (err)
   return err;
 }

 err = nfp_net_init(nn);
 if (err)
  goto err_devlink_port_clean;

 nfp_net_debugfs_vnic_add(nn, pf->ddir);

 if (nn->port)
  nfp_devlink_port_type_eth_set(nn->port);

 nfp_net_info(nn);

 if (nfp_net_is_data_vnic(nn)) {
  err = nfp_app_vnic_init(pf->app, nn);
  if (err)
   goto err_devlink_port_type_clean;
 }

 return 0;

err_devlink_port_type_clean:
 if (nn->port)
  nfp_devlink_port_type_clear(nn->port);
 nfp_net_debugfs_dir_clean(&nn->debugfs_dir);
 nfp_net_clean(nn);
err_devlink_port_clean:
 if (nn->port)
  nfp_devlink_port_unregister(nn->port);
 return err;
}
