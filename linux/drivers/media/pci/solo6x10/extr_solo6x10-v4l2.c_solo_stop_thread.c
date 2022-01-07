
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int * kthread; } ;


 int SOLO_IRQ_VIDEO_IN ;
 int kthread_stop (int *) ;
 int solo_irq_off (struct solo_dev*,int ) ;

__attribute__((used)) static void solo_stop_thread(struct solo_dev *solo_dev)
{
 if (!solo_dev->kthread)
  return;

 solo_irq_off(solo_dev, SOLO_IRQ_VIDEO_IN);
 kthread_stop(solo_dev->kthread);
 solo_dev->kthread = ((void*)0);
}
