
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct sk_buff {int* cb; int len; } ;
struct sge {scalar_t__ espibug_timeout; int espibug_timer; struct sk_buff** espibug_skb; struct adapter* adapter; } ;
struct cpl_tx_pkt {int dummy; } ;
struct adapter {TYPE_1__* port; } ;
struct TYPE_2__ {int dev; } ;


 int ETH_ALEN ;
 int ch_mac_addr ;
 int espibug_timer ;
 struct sge* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ netif_running (int ) ;
 struct sge* sge ;
 int skb_copy_to_linear_data_offset (struct sk_buff*,int,int ,int ) ;
 struct sk_buff* skb_get (struct sk_buff*) ;
 int t1_espi_get_mon (struct adapter*,int,int ) ;
 int t1_sge_tx (struct sk_buff*,struct adapter*,int ,int ) ;

__attribute__((used)) static void espibug_workaround(struct timer_list *t)
{
 struct sge *sge = from_timer(sge, t, espibug_timer);
 struct adapter *adapter = sge->adapter;

 if (netif_running(adapter->port[0].dev)) {
         struct sk_buff *skb = sge->espibug_skb[0];
         u32 seop = t1_espi_get_mon(adapter, 0x930, 0);

         if ((seop & 0xfff0fff) == 0xfff && skb) {
                 if (!skb->cb[0]) {
                         skb_copy_to_linear_data_offset(skb,
           sizeof(struct cpl_tx_pkt),
              ch_mac_addr,
              ETH_ALEN);
                         skb_copy_to_linear_data_offset(skb,
              skb->len - 10,
              ch_mac_addr,
              ETH_ALEN);
                         skb->cb[0] = 0xff;
                 }




                 skb = skb_get(skb);
                 t1_sge_tx(skb, adapter, 0, adapter->port[0].dev);
         }
 }
 mod_timer(&sge->espibug_timer, jiffies + sge->espibug_timeout);
}
