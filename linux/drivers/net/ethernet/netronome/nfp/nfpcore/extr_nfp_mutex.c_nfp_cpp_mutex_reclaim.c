
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct nfp_cpp {int dummy; } ;


 int NFP_CPP_ID (int,int,int ) ;
 scalar_t__ nfp_cpp_interface (struct nfp_cpp*) ;
 int nfp_cpp_mutex_validate (scalar_t__,int*,unsigned long long) ;
 int nfp_cpp_readl (struct nfp_cpp*,int const,unsigned long long,int *) ;
 int nfp_cpp_writel (struct nfp_cpp*,int const,unsigned long long,int ) ;
 scalar_t__ nfp_mutex_is_unlocked (int ) ;
 scalar_t__ nfp_mutex_owner (int ) ;
 int nfp_mutex_unlocked (scalar_t__) ;

int nfp_cpp_mutex_reclaim(struct nfp_cpp *cpp, int target,
     unsigned long long address)
{
 const u32 mur = NFP_CPP_ID(target, 3, 0);
 const u32 muw = NFP_CPP_ID(target, 4, 0);
 u16 interface = nfp_cpp_interface(cpp);
 int err;
 u32 tmp;

 err = nfp_cpp_mutex_validate(interface, &target, address);
 if (err)
  return err;


 err = nfp_cpp_readl(cpp, mur, address, &tmp);
 if (err < 0)
  return err;

 if (nfp_mutex_is_unlocked(tmp) || nfp_mutex_owner(tmp) != interface)
  return 0;


 err = nfp_cpp_writel(cpp, muw, address, nfp_mutex_unlocked(interface));
 if (err < 0)
  return err;

 return 1;
}
