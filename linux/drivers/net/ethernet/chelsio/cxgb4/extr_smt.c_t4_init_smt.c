
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smt_data {unsigned int smt_size; TYPE_1__* smtab; int lock; } ;
struct TYPE_2__ {int idx; scalar_t__ refcnt; int lock; int src_mac; int state; } ;


 int ETH_ALEN ;
 int GFP_KERNEL ;
 unsigned int SMT_SIZE ;
 int SMT_STATE_UNUSED ;
 struct smt_data* kvzalloc (int ,int ) ;
 int memset (int *,int ,int ) ;
 int rwlock_init (int *) ;
 int smtab ;
 int spin_lock_init (int *) ;
 int struct_size (struct smt_data*,int ,unsigned int) ;

struct smt_data *t4_init_smt(void)
{
 unsigned int smt_size;
 struct smt_data *s;
 int i;

 smt_size = SMT_SIZE;

 s = kvzalloc(struct_size(s, smtab, smt_size), GFP_KERNEL);
 if (!s)
  return ((void*)0);
 s->smt_size = smt_size;
 rwlock_init(&s->lock);
 for (i = 0; i < s->smt_size; ++i) {
  s->smtab[i].idx = i;
  s->smtab[i].state = SMT_STATE_UNUSED;
  memset(&s->smtab[i].src_mac, 0, ETH_ALEN);
  spin_lock_init(&s->smtab[i].lock);
  s->smtab[i].refcnt = 0;
 }
 return s;
}
