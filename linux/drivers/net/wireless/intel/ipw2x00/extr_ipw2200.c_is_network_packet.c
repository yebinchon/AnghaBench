
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct libipw_hdr_4addr {int addr1; int addr2; int addr3; } ;
struct ipw_priv {TYPE_1__* net_dev; int bssid; TYPE_2__* ieee; } ;
struct TYPE_4__ {int iw_mode; } ;
struct TYPE_3__ {int dev_addr; } ;




 int ether_addr_equal (int ,int ) ;
 int is_multicast_ether_addr (int ) ;

__attribute__((used)) static int is_network_packet(struct ipw_priv *priv,
        struct libipw_hdr_4addr *header)
{


 switch (priv->ieee->iw_mode) {
 case 129:

  if (ether_addr_equal(header->addr2, priv->net_dev->dev_addr))
   return 0;


  if (is_multicast_ether_addr(header->addr1))
   return ether_addr_equal(header->addr3, priv->bssid);


  return ether_addr_equal(header->addr1,
     priv->net_dev->dev_addr);

 case 128:

  if (ether_addr_equal(header->addr3, priv->net_dev->dev_addr))
   return 0;


  if (is_multicast_ether_addr(header->addr1))
   return ether_addr_equal(header->addr2, priv->bssid);


  return ether_addr_equal(header->addr1,
     priv->net_dev->dev_addr);
 }

 return 1;
}
