
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct qede_dev {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct eth_fast_path_rx_tpa_start_cqe {scalar_t__ header_len; int len_on_first_bd; TYPE_1__ pars_flags; } ;
struct TYPE_4__ {scalar_t__ gso_size; int gso_type; } ;


 int PARSING_AND_ERR_FLAGS_L3TYPE_MASK ;
 int PARSING_AND_ERR_FLAGS_L3TYPE_SHIFT ;
 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;
 scalar_t__ __le16_to_cpu (int ) ;
 int le16_to_cpu (int ) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void qede_set_gro_params(struct qede_dev *edev,
    struct sk_buff *skb,
    struct eth_fast_path_rx_tpa_start_cqe *cqe)
{
 u16 parsing_flags = le16_to_cpu(cqe->pars_flags.flags);

 if (((parsing_flags >> PARSING_AND_ERR_FLAGS_L3TYPE_SHIFT) &
     PARSING_AND_ERR_FLAGS_L3TYPE_MASK) == 2)
  skb_shinfo(skb)->gso_type = SKB_GSO_TCPV6;
 else
  skb_shinfo(skb)->gso_type = SKB_GSO_TCPV4;

 skb_shinfo(skb)->gso_size = __le16_to_cpu(cqe->len_on_first_bd) -
        cqe->header_len;
}
