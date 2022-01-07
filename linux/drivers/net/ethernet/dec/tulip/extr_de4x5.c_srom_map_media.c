
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_2__ {int fdx; } ;
struct de4x5_private {int fdx; int infoblock_media; int media; int chipset; TYPE_1__ params; } ;



 int AUI ;
 int BNC ;
 int DC21140 ;
 int DC2114x ;
 int TP ;
 void* _100Mb ;
 int _10Mb ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ,int) ;

__attribute__((used)) static int
srom_map_media(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);

    lp->fdx = 0;
    if (lp->infoblock_media == lp->media)
      return 0;

    switch(lp->infoblock_media) {
      case 128:
 if (!lp->params.fdx) return -1;
 lp->fdx = 1;


      case 129:
 if (lp->params.fdx && !lp->fdx) return -1;
 if ((lp->chipset == DC21140) || ((lp->chipset & ~0x00ff) == DC2114x)) {
     lp->media = _10Mb;
 } else {
     lp->media = TP;
 }
 break;

      case 131:
 lp->media = BNC;
 break;

      case 130:
 lp->media = AUI;
 break;

      case 132:
        if (!lp->params.fdx) return -1;
 lp->fdx = 1;


      case 134:
 if (lp->params.fdx && !lp->fdx) return -1;
 lp->media = _100Mb;
 break;

      case 133:
 lp->media = _100Mb;
 break;

      case 135:
 if (!lp->params.fdx) return -1;
 lp->fdx = 1;


      case 136:
 if (lp->params.fdx && !lp->fdx) return -1;
 lp->media = _100Mb;
 break;

      case 137:
 lp->media = 137;
 lp->fdx = lp->params.fdx;
 break;

      default:
 printk("%s: Bad media code [%d] detected in SROM!\n", dev->name,
                                                   lp->infoblock_media);
 return -1;
    }

    return 0;
}
