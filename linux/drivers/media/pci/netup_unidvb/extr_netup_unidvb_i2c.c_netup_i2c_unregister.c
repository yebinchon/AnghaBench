
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netup_unidvb_dev {int dummy; } ;


 int netup_i2c_remove (struct netup_unidvb_dev*,int) ;

void netup_i2c_unregister(struct netup_unidvb_dev *ndev)
{
 netup_i2c_remove(ndev, 0);
 netup_i2c_remove(ndev, 1);
}
