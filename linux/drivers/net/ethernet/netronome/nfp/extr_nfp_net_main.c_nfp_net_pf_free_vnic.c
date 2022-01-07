
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int num_vnics; int app; } ;
struct nfp_net {int vnic_list; int port; } ;


 int list_del (int *) ;
 int nfp_app_vnic_free (int ,struct nfp_net*) ;
 int nfp_net_free (struct nfp_net*) ;
 scalar_t__ nfp_net_is_data_vnic (struct nfp_net*) ;
 int nfp_port_free (int ) ;

__attribute__((used)) static void nfp_net_pf_free_vnic(struct nfp_pf *pf, struct nfp_net *nn)
{
 if (nfp_net_is_data_vnic(nn))
  nfp_app_vnic_free(pf->app, nn);
 nfp_port_free(nn->port);
 list_del(&nn->vnic_list);
 pf->num_vnics--;
 nfp_net_free(nn);
}
