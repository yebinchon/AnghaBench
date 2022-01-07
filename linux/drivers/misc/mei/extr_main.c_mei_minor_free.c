
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int minor; } ;


 int idr_remove (int *,int ) ;
 int mei_idr ;
 int mei_minor_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mei_minor_free(struct mei_device *dev)
{
 mutex_lock(&mei_minor_lock);
 idr_remove(&mei_idr, dev->minor);
 mutex_unlock(&mei_minor_lock);
}
