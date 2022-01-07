
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct stmmac_priv {int dma_buf_sz; TYPE_1__* dev; } ;
struct stmmac_packet_attrs {int queue_mapping; scalar_t__ max_size; int dst; } ;
struct TYPE_2__ {int dev_addr; } ;


 scalar_t__ ETH_FCS_LEN ;
 int __stmmac_test_loopback (struct stmmac_priv*,struct stmmac_packet_attrs*) ;

__attribute__((used)) static int __stmmac_test_jumbo(struct stmmac_priv *priv, u16 queue)
{
 struct stmmac_packet_attrs attr = { };
 int size = priv->dma_buf_sz;

 attr.dst = priv->dev->dev_addr;
 attr.max_size = size - ETH_FCS_LEN;
 attr.queue_mapping = queue;

 return __stmmac_test_loopback(priv, &attr);
}
