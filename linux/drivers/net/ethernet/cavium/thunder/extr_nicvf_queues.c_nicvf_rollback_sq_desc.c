
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_queue {int tail; int free_cnt; } ;


 int atomic_add (int,int *) ;

__attribute__((used)) static inline void nicvf_rollback_sq_desc(struct snd_queue *sq,
       int qentry, int desc_cnt)
{
 sq->tail = qentry;
 atomic_add(desc_cnt, &sq->free_cnt);
}
