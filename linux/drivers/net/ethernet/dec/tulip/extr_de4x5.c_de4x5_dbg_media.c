
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct de4x5_private {scalar_t__ media; scalar_t__ c_media; scalar_t__ fdx; } ;


 scalar_t__ ANS ;
 scalar_t__ AUI ;
 scalar_t__ BNC ;
 scalar_t__ BNC_AUI ;
 int DEBUG_MEDIA ;
 scalar_t__ EXT_SIA ;
 scalar_t__ NC ;
 scalar_t__ TP ;
 scalar_t__ _100Mb ;
 scalar_t__ _10Mb ;
 int de4x5_debug ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ,char*,char*) ;

__attribute__((used)) static void
de4x5_dbg_media(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);

    if (lp->media != lp->c_media) {
 if (de4x5_debug & DEBUG_MEDIA) {
     printk("%s: media is %s%s\n", dev->name,
     (lp->media == NC ? "unconnected, link down or incompatible connection" :
      (lp->media == TP ? "TP" :
       (lp->media == ANS ? "TP/Nway" :
        (lp->media == BNC ? "BNC" :
         (lp->media == AUI ? "AUI" :
   (lp->media == BNC_AUI ? "BNC/AUI" :
    (lp->media == EXT_SIA ? "EXT SIA" :
     (lp->media == _100Mb ? "100Mb/s" :
      (lp->media == _10Mb ? "10Mb/s" :
       "???"
       ))))))))), (lp->fdx?" full duplex.":"."));
 }
 lp->c_media = lp->media;
    }
}
