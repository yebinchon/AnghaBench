
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {TYPE_1__* dev; } ;
struct stmmac_packet_attrs {int dst; } ;
struct TYPE_2__ {int dev_addr; } ;


 int __stmmac_test_loopback (struct stmmac_priv*,struct stmmac_packet_attrs*) ;

__attribute__((used)) static int stmmac_test_mac_loopback(struct stmmac_priv *priv)
{
 struct stmmac_packet_attrs attr = { };

 attr.dst = priv->dev->dev_addr;
 return __stmmac_test_loopback(priv, &attr);
}
