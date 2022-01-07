
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk1160 {int v4l_lock; } ;


 int ERESTARTSYS ;
 int keep_buffers ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stk1160_cancel_isoc (struct stk1160*) ;
 int stk1160_clear_queue (struct stk1160*) ;
 int stk1160_dbg (char*) ;
 int stk1160_free_isoc (struct stk1160*) ;
 int stk1160_stop_hw (struct stk1160*) ;

__attribute__((used)) static int stk1160_stop_streaming(struct stk1160 *dev)
{
 if (mutex_lock_interruptible(&dev->v4l_lock))
  return -ERESTARTSYS;






 stk1160_cancel_isoc(dev);





 if (!keep_buffers)
  stk1160_free_isoc(dev);

 stk1160_stop_hw(dev);

 stk1160_clear_queue(dev);

 stk1160_dbg("streaming stopped\n");

 mutex_unlock(&dev->v4l_lock);

 return 0;
}
