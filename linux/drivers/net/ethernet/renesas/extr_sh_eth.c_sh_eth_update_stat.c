
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;


 scalar_t__ sh_eth_read (struct net_device*,int) ;
 int sh_eth_write (struct net_device*,int ,int) ;

__attribute__((used)) static void
sh_eth_update_stat(struct net_device *ndev, unsigned long *stat, int reg)
{
 u32 delta = sh_eth_read(ndev, reg);

 if (delta) {
  *stat += delta;
  sh_eth_write(ndev, 0, reg);
 }
}
