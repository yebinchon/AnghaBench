
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_cpp_area {int dummy; } ;
struct nfp6000_pcie {int dummy; } ;
struct nfp6000_area_priv {int * iomem; TYPE_1__* bar; } ;
struct TYPE_2__ {int iomem; } ;


 int iounmap (int *) ;
 int nfp_bar_put (struct nfp6000_pcie*,TYPE_1__*) ;
 int nfp_cpp_area_cpp (struct nfp_cpp_area*) ;
 struct nfp6000_area_priv* nfp_cpp_area_priv (struct nfp_cpp_area*) ;
 struct nfp6000_pcie* nfp_cpp_priv (int ) ;
 int priv_area_put (struct nfp_cpp_area*) ;

__attribute__((used)) static void nfp6000_area_release(struct nfp_cpp_area *area)
{
 struct nfp6000_pcie *nfp = nfp_cpp_priv(nfp_cpp_area_cpp(area));
 struct nfp6000_area_priv *priv = nfp_cpp_area_priv(area);

 if (!priv_area_put(area))
  return;

 if (!priv->bar->iomem)
  iounmap(priv->iomem);

 nfp_bar_put(nfp, priv->bar);

 priv->bar = ((void*)0);
 priv->iomem = ((void*)0);
}
