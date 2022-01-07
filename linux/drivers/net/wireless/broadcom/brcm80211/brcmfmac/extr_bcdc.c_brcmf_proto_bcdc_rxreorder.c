
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct brcmf_if {int dummy; } ;


 int brcmf_fws_rxreorder (struct brcmf_if*,struct sk_buff*) ;

__attribute__((used)) static void brcmf_proto_bcdc_rxreorder(struct brcmf_if *ifp,
           struct sk_buff *skb)
{
 brcmf_fws_rxreorder(ifp, skb);
}
