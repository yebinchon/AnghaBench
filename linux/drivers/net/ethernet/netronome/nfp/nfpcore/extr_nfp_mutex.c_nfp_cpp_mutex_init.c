
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nfp_cpp {int dummy; } ;


 int NFP_CPP_ID (int,int,int ) ;
 int nfp_cpp_interface (struct nfp_cpp*) ;
 int nfp_cpp_mutex_validate (int ,int*,unsigned long long) ;
 int nfp_cpp_writel (struct nfp_cpp*,int const,unsigned long long,int ) ;
 int nfp_mutex_locked (int ) ;

int nfp_cpp_mutex_init(struct nfp_cpp *cpp,
         int target, unsigned long long address, u32 key)
{
 const u32 muw = NFP_CPP_ID(target, 4, 0);
 u16 interface = nfp_cpp_interface(cpp);
 int err;

 err = nfp_cpp_mutex_validate(interface, &target, address);
 if (err)
  return err;

 err = nfp_cpp_writel(cpp, muw, address + 4, key);
 if (err)
  return err;

 err = nfp_cpp_writel(cpp, muw, address, nfp_mutex_locked(interface));
 if (err)
  return err;

 return 0;
}
