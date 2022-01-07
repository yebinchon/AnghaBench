
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sk_buff {int dummy; } ;
struct bond_3ad_stats {int marker_unknown_rx; int marker_resp_tx; int marker_resp_rx; int marker_tx; int marker_rx; int lacpdu_illegal_rx; int lacpdu_unknown_rx; int lacpdu_tx; int lacpdu_rx; } ;


 int BOND_3AD_STAT_LACPDU_ILLEGAL_RX ;
 int BOND_3AD_STAT_LACPDU_RX ;
 int BOND_3AD_STAT_LACPDU_TX ;
 int BOND_3AD_STAT_LACPDU_UNKNOWN_RX ;
 int BOND_3AD_STAT_MARKER_RESP_RX ;
 int BOND_3AD_STAT_MARKER_RESP_TX ;
 int BOND_3AD_STAT_MARKER_RX ;
 int BOND_3AD_STAT_MARKER_TX ;
 int BOND_3AD_STAT_MARKER_UNKNOWN_RX ;
 int BOND_3AD_STAT_PAD ;
 int EMSGSIZE ;
 int atomic64_read (int *) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;

int bond_3ad_stats_fill(struct sk_buff *skb, struct bond_3ad_stats *stats)
{
 u64 val;

 val = atomic64_read(&stats->lacpdu_rx);
 if (nla_put_u64_64bit(skb, BOND_3AD_STAT_LACPDU_RX, val,
         BOND_3AD_STAT_PAD))
  return -EMSGSIZE;
 val = atomic64_read(&stats->lacpdu_tx);
 if (nla_put_u64_64bit(skb, BOND_3AD_STAT_LACPDU_TX, val,
         BOND_3AD_STAT_PAD))
  return -EMSGSIZE;
 val = atomic64_read(&stats->lacpdu_unknown_rx);
 if (nla_put_u64_64bit(skb, BOND_3AD_STAT_LACPDU_UNKNOWN_RX, val,
         BOND_3AD_STAT_PAD))
  return -EMSGSIZE;
 val = atomic64_read(&stats->lacpdu_illegal_rx);
 if (nla_put_u64_64bit(skb, BOND_3AD_STAT_LACPDU_ILLEGAL_RX, val,
         BOND_3AD_STAT_PAD))
  return -EMSGSIZE;

 val = atomic64_read(&stats->marker_rx);
 if (nla_put_u64_64bit(skb, BOND_3AD_STAT_MARKER_RX, val,
         BOND_3AD_STAT_PAD))
  return -EMSGSIZE;
 val = atomic64_read(&stats->marker_tx);
 if (nla_put_u64_64bit(skb, BOND_3AD_STAT_MARKER_TX, val,
         BOND_3AD_STAT_PAD))
  return -EMSGSIZE;
 val = atomic64_read(&stats->marker_resp_rx);
 if (nla_put_u64_64bit(skb, BOND_3AD_STAT_MARKER_RESP_RX, val,
         BOND_3AD_STAT_PAD))
  return -EMSGSIZE;
 val = atomic64_read(&stats->marker_resp_tx);
 if (nla_put_u64_64bit(skb, BOND_3AD_STAT_MARKER_RESP_TX, val,
         BOND_3AD_STAT_PAD))
  return -EMSGSIZE;
 val = atomic64_read(&stats->marker_unknown_rx);
 if (nla_put_u64_64bit(skb, BOND_3AD_STAT_MARKER_UNKNOWN_RX, val,
         BOND_3AD_STAT_PAD))
  return -EMSGSIZE;

 return 0;
}
