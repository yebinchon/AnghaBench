
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EDMR ;
 int EDMR_SRST_GETHER ;
 int ETIMEDOUT ;
 int mdelay (int) ;
 int netdev_err (struct net_device*,char*) ;
 int sh_eth_read (struct net_device*,int ) ;

__attribute__((used)) static int sh_eth_check_soft_reset(struct net_device *ndev)
{
 int cnt;

 for (cnt = 100; cnt > 0; cnt--) {
  if (!(sh_eth_read(ndev, EDMR) & EDMR_SRST_GETHER))
   return 0;
  mdelay(1);
 }

 netdev_err(ndev, "Device reset failed\n");
 return -ETIMEDOUT;
}
