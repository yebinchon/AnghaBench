
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_pipeline {int state; int entities; int kref; int wq; int irqlock; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int VSP1_PIPELINE_STOPPED ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void vsp1_pipeline_init(struct vsp1_pipeline *pipe)
{
 mutex_init(&pipe->lock);
 spin_lock_init(&pipe->irqlock);
 init_waitqueue_head(&pipe->wq);
 kref_init(&pipe->kref);

 INIT_LIST_HEAD(&pipe->entities);
 pipe->state = VSP1_PIPELINE_STOPPED;
}
