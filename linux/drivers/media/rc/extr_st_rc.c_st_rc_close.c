
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rc_device {scalar_t__ rx_base; } ;
struct rc_dev {struct st_rc_device* priv; } ;


 scalar_t__ IRB_RX_EN ;
 scalar_t__ IRB_RX_INT_EN ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void st_rc_close(struct rc_dev *rdev)
{
 struct st_rc_device *dev = rdev->priv;

 writel(0x00, dev->rx_base + IRB_RX_EN);
 writel(0x00, dev->rx_base + IRB_RX_INT_EN);
}
