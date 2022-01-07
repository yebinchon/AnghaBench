
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netup_unidvb_dev {int dummy; } ;


 int netup_i2c_init (struct netup_unidvb_dev*,int) ;
 int netup_i2c_remove (struct netup_unidvb_dev*,int ) ;

int netup_i2c_register(struct netup_unidvb_dev *ndev)
{
 int ret;

 ret = netup_i2c_init(ndev, 0);
 if (ret)
  return ret;
 ret = netup_i2c_init(ndev, 1);
 if (ret) {
  netup_i2c_remove(ndev, 0);
  return ret;
 }
 return 0;
}
