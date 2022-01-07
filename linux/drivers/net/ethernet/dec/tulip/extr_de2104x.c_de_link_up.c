
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct de_private {size_t media_type; int dev; } ;


 int link ;
 int * media_name ;
 int netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int netif_info (struct de_private*,int ,int ,char*,int ) ;

__attribute__((used)) static void de_link_up(struct de_private *de)
{
 if (!netif_carrier_ok(de->dev)) {
  netif_carrier_on(de->dev);
  netif_info(de, link, de->dev, "link up, media %s\n",
      media_name[de->media_type]);
 }
}
