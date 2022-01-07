
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp {int dummy; } ;
struct nfp6000_pcie {int dummy; } ;


 int disable_bars (struct nfp6000_pcie*) ;
 int kfree (struct nfp6000_pcie*) ;
 struct nfp6000_pcie* nfp_cpp_priv (struct nfp_cpp*) ;

__attribute__((used)) static void nfp6000_free(struct nfp_cpp *cpp)
{
 struct nfp6000_pcie *nfp = nfp_cpp_priv(cpp);

 disable_bars(nfp);
 kfree(nfp);
}
