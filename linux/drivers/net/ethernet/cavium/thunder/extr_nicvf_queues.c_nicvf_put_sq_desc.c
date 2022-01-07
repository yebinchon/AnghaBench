
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int q_len; } ;
struct snd_queue {int xdp_free_cnt; int head; TYPE_1__ dmem; int free_cnt; int is_xdp; } ;


 int atomic_add (int,int *) ;

void nicvf_put_sq_desc(struct snd_queue *sq, int desc_cnt)
{
 if (!sq->is_xdp)
  atomic_add(desc_cnt, &sq->free_cnt);
 else
  sq->xdp_free_cnt += desc_cnt;
 sq->head += desc_cnt;
 sq->head &= (sq->dmem.q_len - 1);
}
