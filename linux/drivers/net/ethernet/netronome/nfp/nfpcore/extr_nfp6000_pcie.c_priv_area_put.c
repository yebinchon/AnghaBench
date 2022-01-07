
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_area {int dummy; } ;
struct nfp6000_area_priv {int refcnt; } ;


 scalar_t__ WARN_ON (int) ;
 int atomic_dec_and_test (int *) ;
 int atomic_read (int *) ;
 struct nfp6000_area_priv* nfp_cpp_area_priv (struct nfp_cpp_area*) ;

__attribute__((used)) static int priv_area_put(struct nfp_cpp_area *area)
{
 struct nfp6000_area_priv *priv = nfp_cpp_area_priv(area);

 if (WARN_ON(!atomic_read(&priv->refcnt)))
  return 0;

 return atomic_dec_and_test(&priv->refcnt);
}
