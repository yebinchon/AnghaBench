
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u16 ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct iwl_rx_cmd_buffer {int truesize; } ;
struct iwl_mvm {int hw; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;


 unsigned int ieee80211_hdrlen (int ) ;
 int ieee80211_rx_napi (int ,struct ieee80211_sta*,struct sk_buff*,struct napi_struct*) ;
 void* rxb_addr (struct iwl_rx_cmd_buffer*) ;
 int rxb_offset (struct iwl_rx_cmd_buffer*) ;
 int rxb_steal_page (struct iwl_rx_cmd_buffer*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int ,int,unsigned int,int ) ;
 int skb_put_data (struct sk_buff*,struct ieee80211_hdr*,unsigned int) ;
 int skb_reserve (struct sk_buff*,unsigned int) ;
 unsigned int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static void iwl_mvm_pass_packet_to_mac80211(struct iwl_mvm *mvm,
         struct ieee80211_sta *sta,
         struct napi_struct *napi,
         struct sk_buff *skb,
         struct ieee80211_hdr *hdr, u16 len,
         u8 crypt_len,
         struct iwl_rx_cmd_buffer *rxb)
{
 unsigned int hdrlen = ieee80211_hdrlen(hdr->frame_control);
 unsigned int fraglen;
 skb_reserve(skb, hdrlen & 3);
 hdrlen = (len <= skb_tailroom(skb)) ? len : hdrlen + crypt_len + 8;

 skb_put_data(skb, hdr, hdrlen);
 fraglen = len - hdrlen;

 if (fraglen) {
  int offset = (void *)hdr + hdrlen -
        rxb_addr(rxb) + rxb_offset(rxb);

  skb_add_rx_frag(skb, 0, rxb_steal_page(rxb), offset,
    fraglen, rxb->truesize);
 }

 ieee80211_rx_napi(mvm->hw, sta, skb, napi);
}
