
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int protocol; int data_len; } ;
struct qede_fastpath {TYPE_2__* rxq; } ;
struct qede_dev {int dummy; } ;
struct TYPE_4__ {int rxq_id; } ;
struct TYPE_3__ {scalar_t__ gso_size; scalar_t__ gso_type; } ;


 int DP_ERR (struct qede_dev*,char*,int ) ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int htons (int ) ;
 int ntohs (int) ;
 int qede_gro_ip_csum (struct sk_buff*) ;
 int qede_gro_ipv6_csum (struct sk_buff*) ;
 int qede_skb_receive (struct qede_dev*,struct qede_fastpath*,TYPE_2__*,struct sk_buff*,int ) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int skb_reset_network_header (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void qede_gro_receive(struct qede_dev *edev,
        struct qede_fastpath *fp,
        struct sk_buff *skb,
        u16 vlan_tag)
{





 if (unlikely(!skb->data_len)) {
  skb_shinfo(skb)->gso_type = 0;
  skb_shinfo(skb)->gso_size = 0;
  goto send_skb;
 }
send_skb:
 skb_record_rx_queue(skb, fp->rxq->rxq_id);
 qede_skb_receive(edev, fp, fp->rxq, skb, vlan_tag);
}
