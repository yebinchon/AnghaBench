
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct ethhdr {int h_proto; } ;
struct TYPE_2__ {int fw_cap_info; } ;


 int DATA ;
 scalar_t__ ETH_P_PAE ;
 scalar_t__ ETH_P_TDLS ;
 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 scalar_t__ ISSUPP_TDLS_ENABLED (int ) ;
 scalar_t__ MWIFIEX_BSS_ROLE_STA ;
 int mwifiex_dbg (TYPE_1__*,int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ mwifiex_is_skb_mgmt_frame (struct sk_buff*) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static bool
mwifiex_bypass_tx_queue(struct mwifiex_private *priv,
   struct sk_buff *skb)
{
 struct ethhdr *eth_hdr = (struct ethhdr *)skb->data;

 if (ntohs(eth_hdr->h_proto) == ETH_P_PAE ||
     mwifiex_is_skb_mgmt_frame(skb) ||
     (GET_BSS_ROLE(priv) == MWIFIEX_BSS_ROLE_STA &&
      ISSUPP_TDLS_ENABLED(priv->adapter->fw_cap_info) &&
      (ntohs(eth_hdr->h_proto) == ETH_P_TDLS))) {
  mwifiex_dbg(priv->adapter, DATA,
       "bypass txqueue; eth type %#x, mgmt %d\n",
        ntohs(eth_hdr->h_proto),
        mwifiex_is_skb_mgmt_frame(skb));
  return 1;
 }

 return 0;
}
