
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef int u_long ;
struct net_device {int dummy; } ;
struct de4x5_srom {int dummy; } ;
struct de4x5_private {scalar_t__ chipset; scalar_t__ bus; int srom; } ;
typedef void* __le16 ;


 scalar_t__ DC21040 ;
 scalar_t__ EISA ;
 int ETH_ALEN ;
 int SROM_HWADD ;
 void* cpu_to_le16 (scalar_t__) ;
 int de4x5_dbg_srom (int *) ;
 int enet_addr_rst (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outl (int ,int ) ;
 scalar_t__ srom_rd (int ,int) ;

__attribute__((used)) static void
DevicePresent(struct net_device *dev, u_long aprom_addr)
{
    int i, j=0;
    struct de4x5_private *lp = netdev_priv(dev);

    if (lp->chipset == DC21040) {
 if (lp->bus == EISA) {
     enet_addr_rst(aprom_addr);
 } else {
     outl(0, aprom_addr);
 }
    } else {
 u_short tmp;
 __le16 *p = (__le16 *)((char *)&lp->srom + SROM_HWADD);
 for (i=0; i<(ETH_ALEN>>1); i++) {
     tmp = srom_rd(aprom_addr, (SROM_HWADD>>1) + i);
     j += tmp;
     *p = cpu_to_le16(tmp);
 }
 if (j == 0 || j == 3 * 0xffff) {

  return;
 }

 p = (__le16 *)&lp->srom;
 for (i=0; i<(sizeof(struct de4x5_srom)>>1); i++) {
     tmp = srom_rd(aprom_addr, i);
     *p++ = cpu_to_le16(tmp);
 }
 de4x5_dbg_srom(&lp->srom);
    }
}
