
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfp_cpp_explicit {int dummy; } ;
struct TYPE_5__ {int mutex; TYPE_1__* group; } ;
struct nfp6000_pcie {TYPE_2__ expl; } ;
struct TYPE_6__ {size_t group; size_t area; } ;
struct nfp6000_explicit_priv {TYPE_3__ bar; struct nfp6000_pcie* nfp; } ;
struct TYPE_4__ {int* free; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nfp6000_explicit_priv* nfp_cpp_explicit_priv (struct nfp_cpp_explicit*) ;

__attribute__((used)) static void nfp6000_explicit_release(struct nfp_cpp_explicit *expl)
{
 struct nfp6000_explicit_priv *priv = nfp_cpp_explicit_priv(expl);
 struct nfp6000_pcie *nfp = priv->nfp;

 mutex_lock(&nfp->expl.mutex);
 nfp->expl.group[priv->bar.group].free[priv->bar.area] = 1;
 mutex_unlock(&nfp->expl.mutex);
}
