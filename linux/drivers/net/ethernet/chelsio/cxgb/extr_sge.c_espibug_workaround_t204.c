
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct sk_buff {int* cb; int len; } ;
struct sge {scalar_t__ espibug_timeout; int espibug_timer; struct sk_buff** espibug_skb; struct adapter* adapter; } ;
struct cpl_tx_pkt {int dummy; } ;
struct TYPE_3__ {unsigned int nports; } ;
struct adapter {int open_device_map; TYPE_2__* port; TYPE_1__ params; } ;
struct TYPE_4__ {int dev; } ;


 int ETH_ALEN ;
 int MAX_NPORTS ;
 int PORT_MASK ;
 int ch_mac_addr ;
 int espibug_timer ;
 struct sge* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_running (int ) ;
 struct sge* sge ;
 int skb_copy_to_linear_data_offset (struct sk_buff*,int,int ,int ) ;
 struct sk_buff* skb_get (struct sk_buff*) ;
 scalar_t__ t1_espi_get_mon_t204 (struct adapter*,int*,int ) ;
 int t1_sge_tx (struct sk_buff*,struct adapter*,int ,int ) ;

__attribute__((used)) static void espibug_workaround_t204(struct timer_list *t)
{
 struct sge *sge = from_timer(sge, t, espibug_timer);
 struct adapter *adapter = sge->adapter;
 unsigned int nports = adapter->params.nports;
 u32 seop[MAX_NPORTS];

 if (adapter->open_device_map & PORT_MASK) {
  int i;

  if (t1_espi_get_mon_t204(adapter, &(seop[0]), 0) < 0)
   return;

  for (i = 0; i < nports; i++) {
   struct sk_buff *skb = sge->espibug_skb[i];

   if (!netif_running(adapter->port[i].dev) ||
       netif_queue_stopped(adapter->port[i].dev) ||
       !seop[i] || ((seop[i] & 0xfff) != 0) || !skb)
    continue;

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
   t1_sge_tx(skb, adapter, 0, adapter->port[i].dev);
  }
 }
 mod_timer(&sge->espibug_timer, jiffies + sge->espibug_timeout);
}
