
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct brcmf_pub {TYPE_1__* proto; } ;
struct brcmf_if {int dummy; } ;
struct TYPE_2__ {int (* hdrpull ) (struct brcmf_pub*,int,struct sk_buff*,struct brcmf_if**) ;} ;


 int stub1 (struct brcmf_pub*,int,struct sk_buff*,struct brcmf_if**) ;

__attribute__((used)) static inline int brcmf_proto_hdrpull(struct brcmf_pub *drvr, bool do_fws,
          struct sk_buff *skb,
          struct brcmf_if **ifp)
{
 struct brcmf_if *tmp = ((void*)0);




 if (ifp)
  *ifp = ((void*)0);
 else
  ifp = &tmp;
 return drvr->proto->hdrpull(drvr, do_fws, skb, ifp);
}
