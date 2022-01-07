
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_pipeline {scalar_t__ state; int irqlock; } ;


 scalar_t__ VSP1_PIPELINE_STOPPED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool vsp1_pipeline_stopped(struct vsp1_pipeline *pipe)
{
 unsigned long flags;
 bool stopped;

 spin_lock_irqsave(&pipe->irqlock, flags);
 stopped = pipe->state == VSP1_PIPELINE_STOPPED;
 spin_unlock_irqrestore(&pipe->irqlock, flags);

 return stopped;
}
