
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enable; } ;
struct TYPE_4__ {int rssen; } ;
struct stmmac_priv {TYPE_3__* dev; TYPE_2__ rss; TYPE_1__ dma_cap; } ;
struct stmmac_packet_attrs {int exp_hash; int sport; int dport; int dst; } ;
struct TYPE_6__ {int dev_addr; } ;


 int EOPNOTSUPP ;
 int __stmmac_test_loopback (struct stmmac_priv*,struct stmmac_packet_attrs*) ;

__attribute__((used)) static int stmmac_test_rss(struct stmmac_priv *priv)
{
 struct stmmac_packet_attrs attr = { };

 if (!priv->dma_cap.rssen || !priv->rss.enable)
  return -EOPNOTSUPP;

 attr.dst = priv->dev->dev_addr;
 attr.exp_hash = 1;
 attr.sport = 0x321;
 attr.dport = 0x123;

 return __stmmac_test_loopback(priv, &attr);
}
