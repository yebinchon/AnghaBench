
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee_types_header {int dummy; } ;
struct TYPE_2__ {int len; int element_id; } ;
struct ieee_types_generic {int data; TYPE_1__ ieee_hdr; } ;
typedef int chan_supp ;


 int WLAN_EID_SUPPORTED_CHANNELS ;
 int memcpy (int ,int*,int) ;
 struct ieee_types_generic* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void mwifiex_tdls_add_supported_chan(struct sk_buff *skb)
{
 struct ieee_types_generic *supp_chan;
 u8 chan_supp[] = {1, 11};

 supp_chan = skb_put(skb,
       (sizeof(struct ieee_types_header) + sizeof(chan_supp)));
 supp_chan->ieee_hdr.element_id = WLAN_EID_SUPPORTED_CHANNELS;
 supp_chan->ieee_hdr.len = sizeof(chan_supp);
 memcpy(supp_chan->data, chan_supp, sizeof(chan_supp));
}
