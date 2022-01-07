
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_sq {int dummy; } ;


 int free_sq_skb_arr (struct hinic_sq*) ;

void hinic_clean_sq(struct hinic_sq *sq)
{
 free_sq_skb_arr(sq);
}
