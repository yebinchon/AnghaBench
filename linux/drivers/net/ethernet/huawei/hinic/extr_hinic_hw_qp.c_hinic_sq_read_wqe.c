
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct hinic_sq_wqe {int dummy; } ;
struct hinic_sq {struct sk_buff** saved_skb; int wq; } ;
struct hinic_hw_wqe {struct hinic_sq_wqe sq_wqe; } ;


 struct hinic_hw_wqe* hinic_read_wqe (int ,unsigned int,size_t*) ;

struct hinic_sq_wqe *hinic_sq_read_wqe(struct hinic_sq *sq,
           struct sk_buff **skb,
           unsigned int wqe_size, u16 *cons_idx)
{
 struct hinic_hw_wqe *hw_wqe;

 hw_wqe = hinic_read_wqe(sq->wq, wqe_size, cons_idx);
 *skb = sq->saved_skb[*cons_idx];

 return &hw_wqe->sq_wqe;
}
