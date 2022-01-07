
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* recv ) (struct port_info*,struct sk_buff*) ;} ;
struct port_info {TYPE_1__ iscsic; } ;


 int cxgb3_arp_process (struct port_info*,struct sk_buff*) ;
 scalar_t__ is_arp (struct sk_buff*) ;
 int stub1 (struct port_info*,struct sk_buff*) ;

__attribute__((used)) static void cxgb3_process_iscsi_prov_pack(struct port_info *pi,
     struct sk_buff *skb)
{
 if (is_arp(skb)) {
  cxgb3_arp_process(pi, skb);
  return;
 }

 if (pi->iscsic.recv)
  pi->iscsic.recv(pi, skb);

}
