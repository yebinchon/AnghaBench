
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {int port; scalar_t__ dst; int netdev; int app; } ;
struct dst_entry {int dummy; } ;


 int dst_release (struct dst_entry*) ;
 int nfp_app_repr_clean (int ,int ) ;
 int nfp_port_free (int ) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void nfp_repr_clean(struct nfp_repr *repr)
{
 unregister_netdev(repr->netdev);
 nfp_app_repr_clean(repr->app, repr->netdev);
 dst_release((struct dst_entry *)repr->dst);
 nfp_port_free(repr->port);
}
