
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;


 int CONFIG_INET ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int IS_ENABLED (int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;

__attribute__((used)) static bool iwl_mvm_can_hw_csum(struct sk_buff *skb)
{
 u8 protocol = ip_hdr(skb)->protocol;

 if (!IS_ENABLED(CONFIG_INET))
  return 0;

 return protocol == IPPROTO_TCP || protocol == IPPROTO_UDP;
}
