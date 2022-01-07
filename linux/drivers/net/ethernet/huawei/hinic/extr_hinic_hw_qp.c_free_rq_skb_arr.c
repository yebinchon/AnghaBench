
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_rq {int saved_skb; } ;


 int vfree (int ) ;

__attribute__((used)) static void free_rq_skb_arr(struct hinic_rq *rq)
{
 vfree(rq->saved_skb);
}
