
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camif_dev {scalar_t__ stream_count; int slock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool camif_is_streaming(struct camif_dev *camif)
{
 unsigned long flags;
 bool status;

 spin_lock_irqsave(&camif->slock, flags);
 status = camif->stream_count > 0;
 spin_unlock_irqrestore(&camif->slock, flags);

 return status;
}
