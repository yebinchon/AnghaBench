
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; int name; struct airo_info* ml_priv; } ;
struct airo_info {int flags; int airo_thread_task; int jobs; struct net_device* wifidev; } ;


 int EIO ;
 int FLAG_COMMIT ;
 int FLAG_FLASHING ;
 int FLAG_RADIO_DOWN ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int JOB_DIE ;
 scalar_t__ PTR_ERR (int ) ;
 int airo_interrupt ;
 int airo_print_err (int ,char*,int ,int) ;
 int airo_thread ;
 int clear_bit (int ,int *) ;
 int disable_MAC (struct airo_info*,int) ;
 int enable_MAC (struct airo_info*,int) ;
 int enable_interrupts (struct airo_info*) ;
 int kthread_run (int ,struct net_device*,char*,int ) ;
 int kthread_stop (int ) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int try_auto_wep (struct airo_info*) ;
 int writeConfigRid (struct airo_info*,int) ;

__attribute__((used)) static int airo_open(struct net_device *dev) {
 struct airo_info *ai = dev->ml_priv;
 int rc = 0;

 if (test_bit(FLAG_FLASHING, &ai->flags))
  return -EIO;





 if (test_bit(FLAG_COMMIT, &ai->flags)) {
  disable_MAC(ai, 1);
  writeConfigRid(ai, 1);
 }

 if (ai->wifidev != dev) {
  clear_bit(JOB_DIE, &ai->jobs);
  ai->airo_thread_task = kthread_run(airo_thread, dev, "%s",
         dev->name);
  if (IS_ERR(ai->airo_thread_task))
   return (int)PTR_ERR(ai->airo_thread_task);

  rc = request_irq(dev->irq, airo_interrupt, IRQF_SHARED,
   dev->name, dev);
  if (rc) {
   airo_print_err(dev->name,
    "register interrupt %d failed, rc %d",
    dev->irq, rc);
   set_bit(JOB_DIE, &ai->jobs);
   kthread_stop(ai->airo_thread_task);
   return rc;
  }


  clear_bit(FLAG_RADIO_DOWN, &ai->flags);
  enable_interrupts(ai);

  try_auto_wep(ai);
 }
 enable_MAC(ai, 1);

 netif_start_queue(dev);
 return 0;
}
