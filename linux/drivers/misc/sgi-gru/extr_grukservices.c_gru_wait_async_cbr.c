
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_blade_state {int bs_async_wq; } ;


 struct gru_blade_state* ASYNC_HAN_TO_BS (unsigned long) ;
 int mb () ;
 int wait_for_completion (int ) ;

void gru_wait_async_cbr(unsigned long han)
{
 struct gru_blade_state *bs = ASYNC_HAN_TO_BS(han);

 wait_for_completion(bs->bs_async_wq);
 mb();
}
