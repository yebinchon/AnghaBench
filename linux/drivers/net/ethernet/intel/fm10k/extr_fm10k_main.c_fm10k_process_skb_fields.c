
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ vlan; } ;
struct TYPE_12__ {int glort; } ;
struct TYPE_8__ {int timestamp; } ;
union fm10k_rx_desc {TYPE_6__ w; TYPE_5__ d; TYPE_1__ q; } ;
typedef int u16 ;
struct sk_buff {unsigned int len; } ;
struct fm10k_ring {int vid; } ;
struct TYPE_10__ {int glort; } ;
struct TYPE_9__ {scalar_t__ vlan; } ;
struct TYPE_11__ {TYPE_3__ d; TYPE_2__ w; } ;
struct TYPE_14__ {TYPE_4__ fi; int tstamp; } ;


 int ETH_P_8021Q ;
 TYPE_7__* FM10K_CB (struct sk_buff*) ;
 int VLAN_PRIO_MASK ;
 int VLAN_VID_MASK ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int fm10k_rx_checksum (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ;
 int fm10k_rx_hash (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ;
 int fm10k_type_trans (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ;
 int htons (int ) ;
 int le16_to_cpu (scalar_t__) ;

__attribute__((used)) static unsigned int fm10k_process_skb_fields(struct fm10k_ring *rx_ring,
          union fm10k_rx_desc *rx_desc,
          struct sk_buff *skb)
{
 unsigned int len = skb->len;

 fm10k_rx_hash(rx_ring, rx_desc, skb);

 fm10k_rx_checksum(rx_ring, rx_desc, skb);

 FM10K_CB(skb)->tstamp = rx_desc->q.timestamp;

 FM10K_CB(skb)->fi.w.vlan = rx_desc->w.vlan;

 FM10K_CB(skb)->fi.d.glort = rx_desc->d.glort;

 if (rx_desc->w.vlan) {
  u16 vid = le16_to_cpu(rx_desc->w.vlan);

  if ((vid & VLAN_VID_MASK) != rx_ring->vid)
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), vid);
  else if (vid & VLAN_PRIO_MASK)
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
            vid & VLAN_PRIO_MASK);
 }

 fm10k_type_trans(rx_ring, rx_desc, skb);

 return len;
}
