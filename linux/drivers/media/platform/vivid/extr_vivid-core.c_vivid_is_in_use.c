
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int fh_lock; int fh_list; } ;


 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool vivid_is_in_use(struct video_device *vdev)
{
 unsigned long flags;
 bool res;

 spin_lock_irqsave(&vdev->fh_lock, flags);
 res = !list_empty(&vdev->fh_list);
 spin_unlock_irqrestore(&vdev->fh_lock, flags);
 return res;
}
