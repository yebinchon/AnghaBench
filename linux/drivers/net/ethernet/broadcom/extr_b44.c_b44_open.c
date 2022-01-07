
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int phydev; int name; int irq; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct b44 {int flags; TYPE_1__ timer; int napi; } ;


 int B44_CHIP_RESET_PARTIAL ;
 int B44_FLAG_EXTERNAL_PHY ;
 int B44_FULL_RESET ;
 int GFP_KERNEL ;
 scalar_t__ HZ ;
 int IRQF_SHARED ;
 int add_timer (TYPE_1__*) ;
 int b44_alloc_consistent (struct b44*,int ) ;
 int b44_check_phy (struct b44*) ;
 int b44_chip_reset (struct b44*,int ) ;
 int b44_enable_ints (struct b44*) ;
 int b44_free_consistent (struct b44*) ;
 int b44_free_rings (struct b44*) ;
 int b44_init_hw (struct b44*,int ) ;
 int b44_init_rings (struct b44*) ;
 int b44_interrupt ;
 int b44_timer ;
 scalar_t__ jiffies ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (int ) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int timer_setup (TYPE_1__*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int b44_open(struct net_device *dev)
{
 struct b44 *bp = netdev_priv(dev);
 int err;

 err = b44_alloc_consistent(bp, GFP_KERNEL);
 if (err)
  goto out;

 napi_enable(&bp->napi);

 b44_init_rings(bp);
 b44_init_hw(bp, B44_FULL_RESET);

 b44_check_phy(bp);

 err = request_irq(dev->irq, b44_interrupt, IRQF_SHARED, dev->name, dev);
 if (unlikely(err < 0)) {
  napi_disable(&bp->napi);
  b44_chip_reset(bp, B44_CHIP_RESET_PARTIAL);
  b44_free_rings(bp);
  b44_free_consistent(bp);
  goto out;
 }

 timer_setup(&bp->timer, b44_timer, 0);
 bp->timer.expires = jiffies + HZ;
 add_timer(&bp->timer);

 b44_enable_ints(bp);

 if (bp->flags & B44_FLAG_EXTERNAL_PHY)
  phy_start(dev->phydev);

 netif_start_queue(dev);
out:
 return err;
}
