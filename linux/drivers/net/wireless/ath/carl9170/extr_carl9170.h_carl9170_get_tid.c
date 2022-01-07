
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;


 int carl9170_get_hdr (struct sk_buff*) ;
 int get_tid_h (int ) ;

__attribute__((used)) static inline u16 carl9170_get_tid(struct sk_buff *skb)
{
 return get_tid_h(carl9170_get_hdr(skb));
}
