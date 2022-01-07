
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_node {int list; int ackto; } ;
struct ath_dynack {int qlock; int nodes; int ackto; } ;
struct ath_hw {struct ath_dynack dynack; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath_dynack_node_init(struct ath_hw *ah, struct ath_node *an)
{
 struct ath_dynack *da = &ah->dynack;

 an->ackto = da->ackto;

 spin_lock_bh(&da->qlock);
 list_add_tail(&an->list, &da->nodes);
 spin_unlock_bh(&da->qlock);
}
