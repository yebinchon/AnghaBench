
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int * ring_thread; } ;


 int SOLO_IRQ_ENCODER ;
 int kthread_stop (int *) ;
 int solo_irq_off (struct solo_dev*,int ) ;

__attribute__((used)) static void solo_ring_stop(struct solo_dev *solo_dev)
{
 if (solo_dev->ring_thread) {
  kthread_stop(solo_dev->ring_thread);
  solo_dev->ring_thread = ((void*)0);
 }

 solo_irq_off(solo_dev, SOLO_IRQ_ENCODER);
}
