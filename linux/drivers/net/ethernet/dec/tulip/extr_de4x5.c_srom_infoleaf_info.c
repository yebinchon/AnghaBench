
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct net_device {int name; } ;
struct de4x5_private {scalar_t__ chipset; int useSROM; scalar_t__ device; int infoleaf_offset; int srom; int infoleaf_fn; } ;
struct TYPE_2__ {scalar_t__ chipset; int fn; } ;


 int ENXIO ;
 int INFOLEAF_SIZE ;
 int get_unaligned_le16 (scalar_t__*) ;
 TYPE_1__* infoleaf_array ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ,...) ;

__attribute__((used)) static int
srom_infoleaf_info(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    int i, count;
    u_char *p;


    for (i=0; i<INFOLEAF_SIZE; i++) {
 if (lp->chipset == infoleaf_array[i].chipset) break;
    }
    if (i == INFOLEAF_SIZE) {
 lp->useSROM = 0;
 printk("%s: Cannot find correct chipset for SROM decoding!\n",
                                                           dev->name);
 return -ENXIO;
    }

    lp->infoleaf_fn = infoleaf_array[i].fn;


    count = *((u_char *)&lp->srom + 19);
    p = (u_char *)&lp->srom + 26;

    if (count > 1) {
 for (i=count; i; --i, p+=3) {
     if (lp->device == *p) break;
 }
 if (i == 0) {
     lp->useSROM = 0;
     printk("%s: Cannot find correct PCI device [%d] for SROM decoding!\n",
                                                dev->name, lp->device);
     return -ENXIO;
 }
    }

 lp->infoleaf_offset = get_unaligned_le16(p + 1);

    return 0;
}
