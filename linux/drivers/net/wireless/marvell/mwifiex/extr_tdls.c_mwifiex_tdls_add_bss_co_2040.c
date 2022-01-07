
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ieee_types_header {int dummy; } ;
struct TYPE_2__ {int len; int element_id; } ;
struct ieee_types_bss_co_2040 {int bss_2040co; TYPE_1__ ieee_hdr; } ;


 int WLAN_EID_BSS_COEX_2040 ;
 struct ieee_types_bss_co_2040* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void mwifiex_tdls_add_bss_co_2040(struct sk_buff *skb)
{
 struct ieee_types_bss_co_2040 *bssco;

 bssco = skb_put(skb, sizeof(struct ieee_types_bss_co_2040));
 bssco->ieee_hdr.element_id = WLAN_EID_BSS_COEX_2040;
 bssco->ieee_hdr.len = sizeof(struct ieee_types_bss_co_2040) -
         sizeof(struct ieee_types_header);
 bssco->bss_2040co = 0x01;
}
