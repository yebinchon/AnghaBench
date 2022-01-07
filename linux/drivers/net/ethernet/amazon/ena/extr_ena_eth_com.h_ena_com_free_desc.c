
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ena_com_io_sq {int next_to_comp; int tail; int q_depth; } ;



__attribute__((used)) static inline int ena_com_free_desc(struct ena_com_io_sq *io_sq)
{
 u16 tail, next_to_comp, cnt;

 next_to_comp = io_sq->next_to_comp;
 tail = io_sq->tail;
 cnt = tail - next_to_comp;

 return io_sq->q_depth - 1 - cnt;
}
