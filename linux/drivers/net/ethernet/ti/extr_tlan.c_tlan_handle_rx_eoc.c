
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tlan_priv {int tlan_rev; int rx_head; int rx_eoc_count; scalar_t__ rx_list_dma; int rx_tail; } ;
struct tlan_list {int dummy; } ;
struct net_device {scalar_t__ base_addr; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ TLAN_CH_PARM ;
 int TLAN_DBG (int ,char*,int,int ) ;
 int TLAN_DEBUG_RX ;
 int TLAN_HC_GO ;
 int TLAN_HC_RT ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int outl (scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 tlan_handle_rx_eoc(struct net_device *dev, u16 host_int)
{
 struct tlan_priv *priv = netdev_priv(dev);
 dma_addr_t head_list_phys;
 u32 ack = 1;

 if (priv->tlan_rev < 0x30) {
  TLAN_DBG(TLAN_DEBUG_RX,
    "RECEIVE:  Handling RX EOC (head=%d tail=%d) -- IRQ\n",
    priv->rx_head, priv->rx_tail);
  head_list_phys = priv->rx_list_dma
   + sizeof(struct tlan_list)*priv->rx_head;
  outl(head_list_phys, dev->base_addr + TLAN_CH_PARM);
  ack |= TLAN_HC_GO | TLAN_HC_RT;
  priv->rx_eoc_count++;
 }

 return ack;

}
