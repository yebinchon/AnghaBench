
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_repr {TYPE_2__* netdev; TYPE_1__* app; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int cpp; } ;


 int __nfp_repr_free (struct nfp_repr*) ;
 int nfp_info (int ,char*,int ) ;
 int nfp_repr_clean (struct nfp_repr*) ;

void nfp_repr_clean_and_free(struct nfp_repr *repr)
{
 nfp_info(repr->app->cpp, "Destroying Representor(%s)\n",
   repr->netdev->name);
 nfp_repr_clean(repr);
 __nfp_repr_free(repr);
}
