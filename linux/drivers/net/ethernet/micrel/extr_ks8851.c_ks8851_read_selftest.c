
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8851_net {int netdev; } ;


 int KS_MBIR ;
 unsigned int MBIR_RXMBF ;
 unsigned int MBIR_RXMBFA ;
 unsigned int MBIR_TXMBF ;
 unsigned int MBIR_TXMBFA ;
 unsigned int ks8851_rdreg16 (struct ks8851_net*,int ) ;
 int netdev_err (int ,char*) ;
 int netdev_warn (int ,char*) ;

__attribute__((used)) static int ks8851_read_selftest(struct ks8851_net *ks)
{
 unsigned both_done = MBIR_TXMBF | MBIR_RXMBF;
 int ret = 0;
 unsigned rd;

 rd = ks8851_rdreg16(ks, KS_MBIR);

 if ((rd & both_done) != both_done) {
  netdev_warn(ks->netdev, "Memory selftest not finished\n");
  return 0;
 }

 if (rd & MBIR_TXMBFA) {
  netdev_err(ks->netdev, "TX memory selftest fail\n");
  ret |= 1;
 }

 if (rd & MBIR_RXMBFA) {
  netdev_err(ks->netdev, "RX memory selftest fail\n");
  ret |= 2;
 }

 return 0;
}
