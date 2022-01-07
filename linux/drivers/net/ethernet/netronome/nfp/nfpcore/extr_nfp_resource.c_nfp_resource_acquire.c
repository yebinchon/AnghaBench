
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_resource {int name; } ;
struct nfp_cpp_mutex {int dummy; } ;
struct nfp_cpp {int dummy; } ;


 int EBUSY ;
 int ENOMEM ;
 int ERESTARTSYS ;
 struct nfp_resource* ERR_PTR (int) ;
 int GFP_KERNEL ;
 unsigned long HZ ;
 unsigned long NFP_MUTEX_WAIT_ERROR ;
 unsigned long NFP_MUTEX_WAIT_FIRST_WARN ;
 unsigned long NFP_MUTEX_WAIT_NEXT_WARN ;
 int NFP_RESOURCE_ENTRY_NAME_SZ ;
 int NFP_RESOURCE_TBL_BASE ;
 int NFP_RESOURCE_TBL_KEY ;
 int NFP_RESOURCE_TBL_TARGET ;
 unsigned long jiffies ;
 int kfree (struct nfp_resource*) ;
 struct nfp_resource* kzalloc (int,int ) ;
 int msleep_interruptible (int) ;
 struct nfp_cpp_mutex* nfp_cpp_mutex_alloc (struct nfp_cpp*,int ,int ,int ) ;
 int nfp_cpp_mutex_free (struct nfp_cpp_mutex*) ;
 int nfp_err (struct nfp_cpp*,char*,char const*) ;
 int nfp_resource_try_acquire (struct nfp_cpp*,struct nfp_resource*,struct nfp_cpp_mutex*) ;
 int nfp_warn (struct nfp_cpp*,char*,char const*) ;
 int strncpy (int ,char const*,int ) ;
 scalar_t__ time_is_before_eq_jiffies (unsigned long) ;

struct nfp_resource *
nfp_resource_acquire(struct nfp_cpp *cpp, const char *name)
{
 unsigned long warn_at = jiffies + NFP_MUTEX_WAIT_FIRST_WARN * HZ;
 unsigned long err_at = jiffies + NFP_MUTEX_WAIT_ERROR * HZ;
 struct nfp_cpp_mutex *dev_mutex;
 struct nfp_resource *res;
 int err;

 res = kzalloc(sizeof(*res), GFP_KERNEL);
 if (!res)
  return ERR_PTR(-ENOMEM);

 strncpy(res->name, name, NFP_RESOURCE_ENTRY_NAME_SZ);

 dev_mutex = nfp_cpp_mutex_alloc(cpp, NFP_RESOURCE_TBL_TARGET,
     NFP_RESOURCE_TBL_BASE,
     NFP_RESOURCE_TBL_KEY);
 if (!dev_mutex) {
  kfree(res);
  return ERR_PTR(-ENOMEM);
 }

 for (;;) {
  err = nfp_resource_try_acquire(cpp, res, dev_mutex);
  if (!err)
   break;
  if (err != -EBUSY)
   goto err_free;

  err = msleep_interruptible(1);
  if (err != 0) {
   err = -ERESTARTSYS;
   goto err_free;
  }

  if (time_is_before_eq_jiffies(warn_at)) {
   warn_at = jiffies + NFP_MUTEX_WAIT_NEXT_WARN * HZ;
   nfp_warn(cpp, "Warning: waiting for NFP resource %s\n",
     name);
  }
  if (time_is_before_eq_jiffies(err_at)) {
   nfp_err(cpp, "Error: resource %s timed out\n", name);
   err = -EBUSY;
   goto err_free;
  }
 }

 nfp_cpp_mutex_free(dev_mutex);

 return res;

err_free:
 nfp_cpp_mutex_free(dev_mutex);
 kfree(res);
 return ERR_PTR(err);
}
