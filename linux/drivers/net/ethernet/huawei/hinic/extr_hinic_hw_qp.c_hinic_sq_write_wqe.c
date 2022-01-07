
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct hinic_sq_wqe {int dummy; } ;
struct hinic_sq {int wq; struct sk_buff** saved_skb; } ;
struct hinic_hw_wqe {int dummy; } ;


 int hinic_cpu_to_be32 (struct hinic_sq_wqe*,unsigned int) ;
 int hinic_write_wqe (int ,struct hinic_hw_wqe*,unsigned int) ;

void hinic_sq_write_wqe(struct hinic_sq *sq, u16 prod_idx,
   struct hinic_sq_wqe *sq_wqe,
   struct sk_buff *skb, unsigned int wqe_size)
{
 struct hinic_hw_wqe *hw_wqe = (struct hinic_hw_wqe *)sq_wqe;

 sq->saved_skb[prod_idx] = skb;


 hinic_cpu_to_be32(sq_wqe, wqe_size);

 hinic_write_wqe(sq->wq, hw_wqe, wqe_size);
}
