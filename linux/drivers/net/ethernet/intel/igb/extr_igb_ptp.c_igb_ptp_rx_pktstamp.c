
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct igb_q_vector {struct igb_adapter* adapter; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_2__ mac; } ;
struct igb_adapter {int link_speed; TYPE_1__ hw; } ;
typedef int __le64 ;
struct TYPE_7__ {int hwtstamp; } ;


 int IGB_I210_RX_LATENCY_10 ;
 int IGB_I210_RX_LATENCY_100 ;
 int IGB_I210_RX_LATENCY_1000 ;



 scalar_t__ e1000_i210 ;
 int igb_ptp_systim_to_hwtstamp (struct igb_adapter*,TYPE_3__*,int ) ;
 int ktime_sub_ns (int ,int) ;
 int le64_to_cpu (int ) ;
 TYPE_3__* skb_hwtstamps (struct sk_buff*) ;

void igb_ptp_rx_pktstamp(struct igb_q_vector *q_vector, void *va,
    struct sk_buff *skb)
{
 __le64 *regval = (__le64 *)va;
 struct igb_adapter *adapter = q_vector->adapter;
 int adjust = 0;





 igb_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb),
       le64_to_cpu(regval[1]));


 if (adapter->hw.mac.type == e1000_i210) {
  switch (adapter->link_speed) {
  case 130:
   adjust = IGB_I210_RX_LATENCY_10;
   break;
  case 129:
   adjust = IGB_I210_RX_LATENCY_100;
   break;
  case 128:
   adjust = IGB_I210_RX_LATENCY_1000;
   break;
  }
 }
 skb_hwtstamps(skb)->hwtstamp =
  ktime_sub_ns(skb_hwtstamps(skb)->hwtstamp, adjust);
}
