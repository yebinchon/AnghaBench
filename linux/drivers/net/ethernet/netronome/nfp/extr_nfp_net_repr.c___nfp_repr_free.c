
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {int netdev; int stats; } ;


 int free_netdev (int ) ;
 int free_percpu (int ) ;

__attribute__((used)) static void __nfp_repr_free(struct nfp_repr *repr)
{
 free_percpu(repr->stats);
 free_netdev(repr->netdev);
}
