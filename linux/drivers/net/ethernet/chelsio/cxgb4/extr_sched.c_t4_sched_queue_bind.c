
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int cntxt_id; } ;
struct sge_eth_txq {TYPE_2__ q; } ;
struct sched_table {struct sched_class* tab; } ;
struct TYPE_6__ {size_t class; } ;
struct sched_queue_entry {unsigned int cntxt_id; int list; TYPE_3__ param; } ;
struct sched_class {int refcnt; int queue_list; } ;
struct port_info {size_t nqsets; size_t first_qset; struct sched_table* sched_tbl; struct adapter* adapter; } ;
struct ch_sched_queue {size_t queue; } ;
struct TYPE_4__ {struct sge_eth_txq* ethtxq; } ;
struct adapter {TYPE_1__ sge; } ;


 int ENOMEM ;
 int ERANGE ;
 int GFP_KERNEL ;
 int SCHED_QUEUE ;
 int atomic_inc (int *) ;
 int kvfree (struct sched_queue_entry*) ;
 struct sched_queue_entry* kvzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (TYPE_3__*,struct ch_sched_queue*,int) ;
 int t4_sched_bind_unbind_op (struct port_info*,void*,int ,int) ;
 int t4_sched_queue_unbind (struct port_info*,struct ch_sched_queue*) ;

__attribute__((used)) static int t4_sched_queue_bind(struct port_info *pi, struct ch_sched_queue *p)
{
 struct adapter *adap = pi->adapter;
 struct sched_table *s = pi->sched_tbl;
 struct sched_class *e;
 struct sched_queue_entry *qe = ((void*)0);
 struct sge_eth_txq *txq;
 unsigned int qid;
 int err = 0;

 if (p->queue < 0 || p->queue >= pi->nqsets)
  return -ERANGE;

 qe = kvzalloc(sizeof(struct sched_queue_entry), GFP_KERNEL);
 if (!qe)
  return -ENOMEM;

 txq = &adap->sge.ethtxq[pi->first_qset + p->queue];
 qid = txq->q.cntxt_id;


 err = t4_sched_queue_unbind(pi, p);
 if (err)
  goto out_err;


 qe->cntxt_id = qid;
 memcpy(&qe->param, p, sizeof(qe->param));

 e = &s->tab[qe->param.class];
 err = t4_sched_bind_unbind_op(pi, (void *)qe, SCHED_QUEUE, 1);
 if (err)
  goto out_err;

 list_add_tail(&qe->list, &e->queue_list);
 atomic_inc(&e->refcnt);
 return err;

out_err:
 kvfree(qe);
 return err;
}
