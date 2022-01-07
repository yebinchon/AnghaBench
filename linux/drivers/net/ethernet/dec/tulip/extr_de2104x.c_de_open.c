
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int mtu; int name; } ;
struct de_private {int rx_buf_sz; int media_timer; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;


 scalar_t__ DE_TIMER_NO_LINK ;
 int IRQF_SHARED ;
 int IntrMask ;
 int PKT_BUF_SZ ;
 int de_alloc_rings (struct de_private*) ;
 int de_free_rings (struct de_private*) ;
 int de_init_hw (struct de_private*) ;
 int de_interrupt ;
 int dw32 (int ,int ) ;
 int free_irq (int const,struct net_device*) ;
 int ifup ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netdev_err (struct net_device*,char*,int const,...) ;
 struct de_private* netdev_priv (struct net_device*) ;
 int netif_dbg (struct de_private*,int ,struct net_device*,char*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int const,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int de_open (struct net_device *dev)
{
 struct de_private *de = netdev_priv(dev);
 const int irq = de->pdev->irq;
 int rc;

 netif_dbg(de, ifup, dev, "enabling interface\n");

 de->rx_buf_sz = (dev->mtu <= 1500 ? PKT_BUF_SZ : dev->mtu + 32);

 rc = de_alloc_rings(de);
 if (rc) {
  netdev_err(dev, "ring allocation failure, err=%d\n", rc);
  return rc;
 }

 dw32(IntrMask, 0);

 rc = request_irq(irq, de_interrupt, IRQF_SHARED, dev->name, dev);
 if (rc) {
  netdev_err(dev, "IRQ %d request failure, err=%d\n", irq, rc);
  goto err_out_free;
 }

 rc = de_init_hw(de);
 if (rc) {
  netdev_err(dev, "h/w init failure, err=%d\n", rc);
  goto err_out_free_irq;
 }

 netif_start_queue(dev);
 mod_timer(&de->media_timer, jiffies + DE_TIMER_NO_LINK);

 return 0;

err_out_free_irq:
 free_irq(irq, dev);
err_out_free:
 de_free_rings(de);
 return rc;
}
