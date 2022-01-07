
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int __nfp_ccm_get_tag (struct sk_buff*) ;
 unsigned int be16_to_cpu (int ) ;

__attribute__((used)) static inline unsigned int nfp_ccm_get_tag(struct sk_buff *skb)
{
 return be16_to_cpu(__nfp_ccm_get_tag(skb));
}
