
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
typedef int rc_list ;


 int WLAN_EID_SUPPORTED_REGULATORY_CLASSES ;
 int memcpy (int ,int*,int) ;
 struct ieee_types_generic* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void mwifiex_tdls_add_oper_class(struct sk_buff *skb)
{
 struct ieee_types_generic *reg_class;
 u8 rc_list[] = {1,
  1, 2, 3, 4, 12, 22, 23, 24, 25, 27, 28, 29, 30, 32, 33};
 reg_class = skb_put(skb,
       (sizeof(struct ieee_types_header) + sizeof(rc_list)));
 reg_class->ieee_hdr.element_id = WLAN_EID_SUPPORTED_REGULATORY_CLASSES;
 reg_class->ieee_hdr.len = sizeof(rc_list);
 memcpy(reg_class->data, rc_list, sizeof(rc_list));
}
