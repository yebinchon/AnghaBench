
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct brcmf_pub {TYPE_1__* proto; } ;
struct TYPE_2__ {int (* txdata ) (struct brcmf_pub*,int,int ,struct sk_buff*) ;} ;


 int stub1 (struct brcmf_pub*,int,int ,struct sk_buff*) ;

__attribute__((used)) static inline int brcmf_proto_txdata(struct brcmf_pub *drvr, int ifidx,
         u8 offset, struct sk_buff *skb)
{
 return drvr->proto->txdata(drvr, ifidx, offset, skb);
}
