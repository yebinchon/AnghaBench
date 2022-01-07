
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_sq {int wq; } ;


 int hinic_return_wqe (int ,unsigned int) ;

void hinic_sq_return_wqe(struct hinic_sq *sq, unsigned int wqe_size)
{
 hinic_return_wqe(sq->wq, wqe_size);
}
