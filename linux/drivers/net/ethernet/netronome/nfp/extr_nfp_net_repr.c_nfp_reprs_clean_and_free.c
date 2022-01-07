
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_reprs {unsigned int num_reprs; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;


 int kfree (struct nfp_reprs*) ;
 int netdev_priv (struct net_device*) ;
 int nfp_repr_clean_and_free (int ) ;
 struct net_device* nfp_repr_get_locked (struct nfp_app*,struct nfp_reprs*,unsigned int) ;

void nfp_reprs_clean_and_free(struct nfp_app *app, struct nfp_reprs *reprs)
{
 struct net_device *netdev;
 unsigned int i;

 for (i = 0; i < reprs->num_reprs; i++) {
  netdev = nfp_repr_get_locked(app, reprs, i);
  if (netdev)
   nfp_repr_clean_and_free(netdev_priv(netdev));
 }

 kfree(reprs);
}
