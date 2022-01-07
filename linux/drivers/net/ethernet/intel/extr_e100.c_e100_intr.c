
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nic {int napi; int ru_running; TYPE_2__* csr; int netdev; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int stat_ack; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KERN_DEBUG ;
 int RU_SUSPENDED ;
 int __napi_schedule (int *) ;
 int e100_disable_irq (struct nic*) ;
 int intr ;
 int ioread8 (int *) ;
 int iowrite8 (int,int *) ;
 scalar_t__ likely (int ) ;
 int napi_schedule_prep (int *) ;
 struct nic* netdev_priv (struct net_device*) ;
 int netif_printk (struct nic*,int ,int ,int ,char*,int) ;
 int stat_ack_not_ours ;
 int stat_ack_not_present ;
 int stat_ack_rnr ;

__attribute__((used)) static irqreturn_t e100_intr(int irq, void *dev_id)
{
 struct net_device *netdev = dev_id;
 struct nic *nic = netdev_priv(netdev);
 u8 stat_ack = ioread8(&nic->csr->scb.stat_ack);

 netif_printk(nic, intr, KERN_DEBUG, nic->netdev,
       "stat_ack = 0x%02X\n", stat_ack);

 if (stat_ack == stat_ack_not_ours ||
    stat_ack == stat_ack_not_present)
  return IRQ_NONE;


 iowrite8(stat_ack, &nic->csr->scb.stat_ack);


 if (stat_ack & stat_ack_rnr)
  nic->ru_running = RU_SUSPENDED;

 if (likely(napi_schedule_prep(&nic->napi))) {
  e100_disable_irq(nic);
  __napi_schedule(&nic->napi);
 }

 return IRQ_HANDLED;
}
