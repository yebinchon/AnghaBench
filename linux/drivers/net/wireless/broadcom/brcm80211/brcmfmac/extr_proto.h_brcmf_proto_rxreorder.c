
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct brcmf_if {TYPE_2__* drvr; } ;
struct TYPE_4__ {TYPE_1__* proto; } ;
struct TYPE_3__ {int (* rxreorder ) (struct brcmf_if*,struct sk_buff*) ;} ;


 int stub1 (struct brcmf_if*,struct sk_buff*) ;

__attribute__((used)) static inline void
brcmf_proto_rxreorder(struct brcmf_if *ifp, struct sk_buff *skb)
{
 ifp->drvr->proto->rxreorder(ifp, skb);
}
