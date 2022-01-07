
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;


 struct net_device* nfp_repr_alloc_mqs (struct nfp_app*,int,int) ;

__attribute__((used)) static inline struct net_device *nfp_repr_alloc(struct nfp_app *app)
{
 return nfp_repr_alloc_mqs(app, 1, 1);
}
