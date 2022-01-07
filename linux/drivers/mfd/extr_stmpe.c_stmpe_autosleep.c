
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmpe {int lock; TYPE_1__* variant; } ;
struct TYPE_2__ {int (* enable_autosleep ) (struct stmpe*,int) ;} ;


 int ENOSYS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct stmpe*,int) ;

__attribute__((used)) static int stmpe_autosleep(struct stmpe *stmpe, int autosleep_timeout)
{
 int ret;

 if (!stmpe->variant->enable_autosleep)
  return -ENOSYS;

 mutex_lock(&stmpe->lock);
 ret = stmpe->variant->enable_autosleep(stmpe, autosleep_timeout);
 mutex_unlock(&stmpe->lock);

 return ret;
}
