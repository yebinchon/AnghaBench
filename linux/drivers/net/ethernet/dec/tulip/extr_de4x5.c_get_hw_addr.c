
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef int u_long ;
typedef void* u_char ;
struct net_device {int* dev_addr; int base_addr; } ;
struct TYPE_2__ {scalar_t__* ieee_addr; } ;
struct de4x5_private {scalar_t__ bus; scalar_t__ chipset; TYPE_1__ srom; } ;


 int ACCTON ;
 scalar_t__ DC21040 ;
 int DE4X5_APROM ;
 int EISA_APROM ;
 int ETH_ALEN ;
 scalar_t__ PCI ;
 int SMC ;
 int de4x5_bad_srom (struct de4x5_private*) ;
 scalar_t__ dec_only ;
 int inb (int ) ;
 int inl (int ) ;
 scalar_t__ machine_is (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int powermac ;
 int srom_repair (struct net_device*,int) ;
 int test_bad_enet (struct net_device*,int) ;

__attribute__((used)) static int
get_hw_addr(struct net_device *dev)
{
    u_long iobase = dev->base_addr;
    int broken, i, k, tmp, status = 0;
    u_short j,chksum;
    struct de4x5_private *lp = netdev_priv(dev);

    broken = de4x5_bad_srom(lp);

    for (i=0,k=0,j=0;j<3;j++) {
 k <<= 1;
 if (k > 0xffff) k-=0xffff;

 if (lp->bus == PCI) {
     if (lp->chipset == DC21040) {
  while ((tmp = inl(DE4X5_APROM)) < 0);
  k += (u_char) tmp;
  dev->dev_addr[i++] = (u_char) tmp;
  while ((tmp = inl(DE4X5_APROM)) < 0);
  k += (u_short) (tmp << 8);
  dev->dev_addr[i++] = (u_char) tmp;
     } else if (!broken) {
  dev->dev_addr[i] = (u_char) lp->srom.ieee_addr[i]; i++;
  dev->dev_addr[i] = (u_char) lp->srom.ieee_addr[i]; i++;
     } else if ((broken == SMC) || (broken == ACCTON)) {
  dev->dev_addr[i] = *((u_char *)&lp->srom + i); i++;
  dev->dev_addr[i] = *((u_char *)&lp->srom + i); i++;
     }
 } else {
     k += (u_char) (tmp = inb(EISA_APROM));
     dev->dev_addr[i++] = (u_char) tmp;
     k += (u_short) ((tmp = inb(EISA_APROM)) << 8);
     dev->dev_addr[i++] = (u_char) tmp;
 }

 if (k > 0xffff) k-=0xffff;
    }
    if (k == 0xffff) k=0;

    if (lp->bus == PCI) {
 if (lp->chipset == DC21040) {
     while ((tmp = inl(DE4X5_APROM)) < 0);
     chksum = (u_char) tmp;
     while ((tmp = inl(DE4X5_APROM)) < 0);
     chksum |= (u_short) (tmp << 8);
     if ((k != chksum) && (dec_only)) status = -1;
 }
    } else {
 chksum = (u_char) inb(EISA_APROM);
 chksum |= (u_short) (inb(EISA_APROM) << 8);
 if ((k != chksum) && (dec_only)) status = -1;
    }


    srom_repair(dev, broken);
    status = test_bad_enet(dev, status);

    return status;
}
