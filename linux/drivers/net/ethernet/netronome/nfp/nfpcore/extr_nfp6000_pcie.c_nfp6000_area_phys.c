
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_area {int dummy; } ;
struct nfp6000_area_priv {int phys; } ;
typedef int phys_addr_t ;


 struct nfp6000_area_priv* nfp_cpp_area_priv (struct nfp_cpp_area*) ;

__attribute__((used)) static phys_addr_t nfp6000_area_phys(struct nfp_cpp_area *area)
{
 struct nfp6000_area_priv *priv = nfp_cpp_area_priv(area);

 return priv->phys;
}
