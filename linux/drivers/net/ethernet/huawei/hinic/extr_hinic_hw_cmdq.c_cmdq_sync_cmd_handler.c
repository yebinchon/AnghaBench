
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hinic_cmdq {int cmdq_lock; scalar_t__* done; } ;


 int cmdq_update_errcode (struct hinic_cmdq*,size_t,int) ;
 int complete (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wmb () ;

__attribute__((used)) static void cmdq_sync_cmd_handler(struct hinic_cmdq *cmdq, u16 cons_idx,
      int errcode)
{
 u16 prod_idx = cons_idx;

 spin_lock(&cmdq->cmdq_lock);
 cmdq_update_errcode(cmdq, prod_idx, errcode);

 wmb();

 if (cmdq->done[prod_idx])
  complete(cmdq->done[prod_idx]);
 spin_unlock(&cmdq->cmdq_lock);
}
