
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct be_adapter {int dummy; } ;


 scalar_t__ BE3_chip (struct be_adapter*) ;
 scalar_t__ be_ipv6_exthdr_check (struct sk_buff*) ;

__attribute__((used)) static int be_ipv6_tx_stall_chk(struct be_adapter *adapter, struct sk_buff *skb)
{
 return BE3_chip(adapter) && be_ipv6_exthdr_check(skb);
}
