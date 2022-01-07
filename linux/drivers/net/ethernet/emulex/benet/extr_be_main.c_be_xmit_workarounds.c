
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct be_wrb_params {int dummy; } ;
struct be_adapter {int dummy; } ;


 int BE_MAX_GSO_SIZE ;
 scalar_t__ BEx_chip (struct be_adapter*) ;
 int WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 struct sk_buff* be_lancer_xmit_workarounds (struct be_adapter*,struct sk_buff*,struct be_wrb_params*) ;
 scalar_t__ lancer_chip (struct be_adapter*) ;
 int pskb_trim (struct sk_buff*,int) ;
 scalar_t__ skb_put_padto (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *be_xmit_workarounds(struct be_adapter *adapter,
        struct sk_buff *skb,
        struct be_wrb_params *wrb_params)
{
 int err;






 if (skb->len <= 32) {
  if (skb_put_padto(skb, 36))
   return ((void*)0);
 }

 if (BEx_chip(adapter) || lancer_chip(adapter)) {
  skb = be_lancer_xmit_workarounds(adapter, skb, wrb_params);
  if (!skb)
   return ((void*)0);
 }




 WARN_ON_ONCE(skb->len > BE_MAX_GSO_SIZE);
 err = pskb_trim(skb, BE_MAX_GSO_SIZE);
 WARN_ON(err);

 return skb;
}
