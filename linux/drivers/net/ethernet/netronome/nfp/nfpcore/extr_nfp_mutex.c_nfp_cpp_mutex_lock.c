
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_cpp_mutex {int cpp; int key; int address; int target; int depth; } ;


 int EBUSY ;
 int ERESTARTSYS ;
 unsigned long HZ ;
 unsigned long NFP_MUTEX_WAIT_ERROR ;
 unsigned long NFP_MUTEX_WAIT_FIRST_WARN ;
 unsigned long NFP_MUTEX_WAIT_NEXT_WARN ;
 unsigned long jiffies ;
 int msleep_interruptible (unsigned int) ;
 int nfp_cpp_mutex_trylock (struct nfp_cpp_mutex*) ;
 int nfp_err (int ,char*) ;
 int nfp_info (int ,char*) ;
 int nfp_warn (int ,char*,int ,int ,int ,int ) ;
 scalar_t__ time_is_before_eq_jiffies (unsigned long) ;

int nfp_cpp_mutex_lock(struct nfp_cpp_mutex *mutex)
{
 unsigned long warn_at = jiffies + NFP_MUTEX_WAIT_FIRST_WARN * HZ;
 unsigned long err_at = jiffies + NFP_MUTEX_WAIT_ERROR * HZ;
 unsigned int timeout_ms = 1;
 int err;






 for (;;) {
  err = nfp_cpp_mutex_trylock(mutex);
  if (err != -EBUSY)
   break;

  err = msleep_interruptible(timeout_ms);
  if (err != 0) {
   nfp_info(mutex->cpp,
     "interrupted waiting for NFP mutex\n");
   return -ERESTARTSYS;
  }

  if (time_is_before_eq_jiffies(warn_at)) {
   warn_at = jiffies + NFP_MUTEX_WAIT_NEXT_WARN * HZ;
   nfp_warn(mutex->cpp,
     "Warning: waiting for NFP mutex [depth:%hd target:%d addr:%llx key:%08x]\n",
     mutex->depth,
     mutex->target, mutex->address, mutex->key);
  }
  if (time_is_before_eq_jiffies(err_at)) {
   nfp_err(mutex->cpp, "Error: mutex wait timed out\n");
   return -EBUSY;
  }
 }

 return err;
}
