
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int XGMAC_FIFO_UNIT ;

__attribute__((used)) static void xgbe_calculate_equal_fifo(unsigned int fifo_size,
          unsigned int queue_count,
          unsigned int *fifo)
{
 unsigned int q_fifo_size;
 unsigned int p_fifo;
 unsigned int i;

 q_fifo_size = fifo_size / queue_count;





 p_fifo = q_fifo_size / XGMAC_FIFO_UNIT;
 if (p_fifo)
  p_fifo--;


 for (i = 0; i < queue_count; i++)
  fifo[i] = p_fifo;
}
