
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ivtv {int cur_dma_stream; int dma_waitq; int i_flags; } ;


 int IVTV_ERR (char*,int,int) ;
 int IVTV_F_I_DMA ;
 int IVTV_F_I_UDMA ;
 int IVTV_REG_DMASTATUS ;
 int clear_bit (int ,int *) ;
 int dma_timer ;
 struct ivtv* from_timer (int ,struct timer_list*,int ) ;
 struct ivtv* itv ;
 int read_reg (int ) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;
 int write_reg (int,int ) ;

void ivtv_unfinished_dma(struct timer_list *t)
{
 struct ivtv *itv = from_timer(itv, t, dma_timer);

 if (!test_bit(IVTV_F_I_DMA, &itv->i_flags))
  return;
 IVTV_ERR("DMA TIMEOUT %08x %d\n", read_reg(IVTV_REG_DMASTATUS), itv->cur_dma_stream);

 write_reg(read_reg(IVTV_REG_DMASTATUS) & 3, IVTV_REG_DMASTATUS);
 clear_bit(IVTV_F_I_UDMA, &itv->i_flags);
 clear_bit(IVTV_F_I_DMA, &itv->i_flags);
 itv->cur_dma_stream = -1;
 wake_up(&itv->dma_waitq);
}
