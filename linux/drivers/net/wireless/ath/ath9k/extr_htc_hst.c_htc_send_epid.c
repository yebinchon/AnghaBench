
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct htc_target {int dummy; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int htc_issue_send (struct htc_target*,struct sk_buff*,int ,int ,int) ;

int htc_send_epid(struct htc_target *target, struct sk_buff *skb,
    enum htc_endpoint_id epid)
{
 return htc_issue_send(target, skb, skb->len, 0, epid);
}
