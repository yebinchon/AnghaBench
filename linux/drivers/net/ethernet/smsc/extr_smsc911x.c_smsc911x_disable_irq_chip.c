
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {int dummy; } ;
struct net_device {int dummy; } ;


 int INT_EN ;
 int INT_STS ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,int) ;

__attribute__((used)) static void smsc911x_disable_irq_chip(struct net_device *dev)
{
 struct smsc911x_data *pdata = netdev_priv(dev);

 smsc911x_reg_write(pdata, INT_EN, 0);
 smsc911x_reg_write(pdata, INT_STS, 0xFFFFFFFF);
}
