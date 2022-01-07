
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; struct airo_info* ml_priv; } ;
struct airo_info {int airo_thread_task; int jobs; int flags; struct net_device* wifidev; } ;


 int FLAG_RADIO_DOWN ;
 int JOB_DIE ;
 int disable_MAC (struct airo_info*,int) ;
 int disable_interrupts (struct airo_info*) ;
 int free_irq (int ,struct net_device*) ;
 int kthread_stop (int ) ;
 int netif_stop_queue (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int airo_close(struct net_device *dev) {
 struct airo_info *ai = dev->ml_priv;

 netif_stop_queue(dev);

 if (ai->wifidev != dev) {
  disable_interrupts( ai );

  free_irq(dev->irq, dev);

  set_bit(JOB_DIE, &ai->jobs);
  kthread_stop(ai->airo_thread_task);
 }
 return 0;
}
