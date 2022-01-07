
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hinic_wq {int wqebb_size; } ;
struct hinic_sq {struct hinic_wq* wq; } ;


 int ALIGN (unsigned int,int) ;
 int SQ_DB_ADDR (struct hinic_sq*,int) ;
 int sq_prepare_db (struct hinic_sq*,int,unsigned int) ;
 int wmb () ;
 int writel (int ,int ) ;

void hinic_sq_write_db(struct hinic_sq *sq, u16 prod_idx, unsigned int wqe_size,
         unsigned int cos)
{
 struct hinic_wq *wq = sq->wq;


 prod_idx += ALIGN(wqe_size, wq->wqebb_size) / wq->wqebb_size;

 wmb();

 writel(sq_prepare_db(sq, prod_idx, cos), SQ_DB_ADDR(sq, prod_idx));
}
