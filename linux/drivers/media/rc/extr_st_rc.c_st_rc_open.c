
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rc_device {scalar_t__ rx_base; } ;
struct rc_dev {struct st_rc_device* priv; } ;


 scalar_t__ IRB_RX_EN ;
 int IRB_RX_INTS ;
 scalar_t__ IRB_RX_INT_EN ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int st_rc_open(struct rc_dev *rdev)
{
 struct st_rc_device *dev = rdev->priv;
 unsigned long flags;
 local_irq_save(flags);

 writel(IRB_RX_INTS, dev->rx_base + IRB_RX_INT_EN);
 writel(0x01, dev->rx_base + IRB_RX_EN);
 local_irq_restore(flags);

 return 0;
}
