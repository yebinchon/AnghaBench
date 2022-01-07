
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfp_cpp_mutex {int depth; scalar_t__ key; scalar_t__ address; struct nfp_cpp* cpp; int target; } ;
struct nfp_cpp {int dummy; } ;


 int E2BIG ;
 int EBUSY ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ NFP_CPP_ID (int ,int,int) ;
 int NFP_MUTEX_DEPTH_MAX ;
 int nfp_cpp_interface (struct nfp_cpp*) ;
 int nfp_cpp_readl (struct nfp_cpp*,scalar_t__ const,scalar_t__,scalar_t__*) ;
 int nfp_cpp_writel (struct nfp_cpp*,scalar_t__ const,scalar_t__,scalar_t__) ;
 scalar_t__ nfp_mutex_is_locked (scalar_t__) ;
 scalar_t__ nfp_mutex_is_unlocked (scalar_t__) ;
 scalar_t__ nfp_mutex_locked (int ) ;

int nfp_cpp_mutex_trylock(struct nfp_cpp_mutex *mutex)
{
 const u32 muw = NFP_CPP_ID(mutex->target, 4, 0);
 const u32 mus = NFP_CPP_ID(mutex->target, 5, 3);
 const u32 mur = NFP_CPP_ID(mutex->target, 3, 0);
 struct nfp_cpp *cpp = mutex->cpp;
 u32 key, value, tmp;
 int err;

 if (mutex->depth > 0) {
  if (mutex->depth == NFP_MUTEX_DEPTH_MAX)
   return -E2BIG;
  mutex->depth++;
  return 0;
 }


 err = nfp_cpp_readl(cpp, mur, mutex->address + 4, &key);
 if (err < 0)
  return err;

 if (key != mutex->key)
  return -EPERM;





 value = nfp_mutex_locked(nfp_cpp_interface(cpp));
 err = nfp_cpp_readl(cpp, mus, mutex->address, &tmp);
 if (err < 0)
  return err;


 if (nfp_mutex_is_unlocked(tmp)) {
  err = nfp_cpp_writel(cpp, muw, mutex->address, value);
  if (err < 0)
   return err;

  mutex->depth = 1;
  return 0;
 }

 return nfp_mutex_is_locked(tmp) ? -EBUSY : -EINVAL;
}
