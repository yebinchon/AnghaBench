
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_area {int dummy; } ;
struct nfp6000_area_priv {int refcnt; } ;


 int atomic_inc (int *) ;
 struct nfp6000_area_priv* nfp_cpp_area_priv (struct nfp_cpp_area*) ;

__attribute__((used)) static void priv_area_get(struct nfp_cpp_area *area)
{
 struct nfp6000_area_priv *priv = nfp_cpp_area_priv(area);

 atomic_inc(&priv->refcnt);
}
