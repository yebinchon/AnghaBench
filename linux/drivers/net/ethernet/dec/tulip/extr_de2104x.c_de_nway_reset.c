
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct de_private {scalar_t__ media_type; int dev; } ;


 scalar_t__ DE_MEDIA_TP_AUTO ;
 int EINVAL ;
 int NWayRestart ;
 int NWayState ;
 int SIAStatus ;
 int de_link_down (struct de_private*) ;
 int dr32 (int ) ;
 int dw32 (int ,int) ;
 int link ;
 struct de_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_info (struct de_private*,int ,struct net_device*,char*,int,int) ;

__attribute__((used)) static int de_nway_reset(struct net_device *dev)
{
 struct de_private *de = netdev_priv(dev);
 u32 status;

 if (de->media_type != DE_MEDIA_TP_AUTO)
  return -EINVAL;
 if (netif_carrier_ok(de->dev))
  de_link_down(de);

 status = dr32(SIAStatus);
 dw32(SIAStatus, (status & ~NWayState) | NWayRestart);
 netif_info(de, link, dev, "link nway restart, status %x,%x\n",
     status, dr32(SIAStatus));
 return 0;
}
