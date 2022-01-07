
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct nfp_cpp_mutex {int target; unsigned long long address; scalar_t__ depth; scalar_t__ key; struct nfp_cpp* cpp; } ;
struct nfp_cpp {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ NFP_CPP_ID (int,int,int ) ;
 struct nfp_cpp_mutex* kzalloc (int,int ) ;
 int nfp_cpp_interface (struct nfp_cpp*) ;
 int nfp_cpp_mutex_validate (int ,int*,unsigned long long) ;
 int nfp_cpp_readl (struct nfp_cpp*,scalar_t__ const,unsigned long long,scalar_t__*) ;

struct nfp_cpp_mutex *nfp_cpp_mutex_alloc(struct nfp_cpp *cpp, int target,
       unsigned long long address, u32 key)
{
 const u32 mur = NFP_CPP_ID(target, 3, 0);
 u16 interface = nfp_cpp_interface(cpp);
 struct nfp_cpp_mutex *mutex;
 int err;
 u32 tmp;

 err = nfp_cpp_mutex_validate(interface, &target, address);
 if (err)
  return ((void*)0);

 err = nfp_cpp_readl(cpp, mur, address + 4, &tmp);
 if (err < 0)
  return ((void*)0);

 if (tmp != key)
  return ((void*)0);

 mutex = kzalloc(sizeof(*mutex), GFP_KERNEL);
 if (!mutex)
  return ((void*)0);

 mutex->cpp = cpp;
 mutex->target = target;
 mutex->address = address;
 mutex->key = key;
 mutex->depth = 0;

 return mutex;
}
