
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 scalar_t__ GIGA_MAHR (int) ;
 scalar_t__ GIGA_MALR (int) ;
 int ioread32 (void*) ;
 int iowrite32 (int ,void*) ;
 int sh_eth_chip_reset (struct net_device*) ;

__attribute__((used)) static void sh_eth_chip_reset_giga(struct net_device *ndev)
{
 u32 mahr[2], malr[2];
 int i;


 for (i = 0; i < 2; i++) {
  malr[i] = ioread32((void *)GIGA_MALR(i));
  mahr[i] = ioread32((void *)GIGA_MAHR(i));
 }

 sh_eth_chip_reset(ndev);


 for (i = 0; i < 2; i++) {
  iowrite32(malr[i], (void *)GIGA_MALR(i));
  iowrite32(mahr[i], (void *)GIGA_MAHR(i));
 }
}
