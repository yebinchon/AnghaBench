
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int db_disabled; int db_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void disable_txq_db(struct sge_txq *q)
{
 unsigned long flags;

 spin_lock_irqsave(&q->db_lock, flags);
 q->db_disabled = 1;
 spin_unlock_irqrestore(&q->db_lock, flags);
}
