
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_node {int list; } ;
struct ath_dynack {int qlock; } ;
struct ath_hw {struct ath_dynack dynack; } ;


 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath_dynack_node_deinit(struct ath_hw *ah, struct ath_node *an)
{
 struct ath_dynack *da = &ah->dynack;

 spin_lock_bh(&da->qlock);
 list_del(&an->list);
 spin_unlock_bh(&da->qlock);
}
