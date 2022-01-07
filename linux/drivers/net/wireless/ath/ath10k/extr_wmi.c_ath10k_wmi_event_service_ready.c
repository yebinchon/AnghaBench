
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k {int svc_rdy_work; int workqueue_aux; struct sk_buff* svc_rdy_skb; } ;


 int queue_work (int ,int *) ;

void ath10k_wmi_event_service_ready(struct ath10k *ar, struct sk_buff *skb)
{
 ar->svc_rdy_skb = skb;
 queue_work(ar->workqueue_aux, &ar->svc_rdy_work);
}
