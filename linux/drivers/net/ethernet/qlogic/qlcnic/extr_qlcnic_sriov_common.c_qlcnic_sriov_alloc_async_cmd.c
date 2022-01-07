
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_cmd_args {int dummy; } ;
struct qlcnic_back_channel {int queue_lock; int async_cmd_list; } ;
struct qlcnic_async_cmd {int list; struct qlcnic_cmd_args* cmd; } ;


 int GFP_ATOMIC ;
 struct qlcnic_async_cmd* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct qlcnic_async_cmd *
qlcnic_sriov_alloc_async_cmd(struct qlcnic_back_channel *bc,
        struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_async_cmd *entry = ((void*)0);

 entry = kzalloc(sizeof(*entry), GFP_ATOMIC);
 if (!entry)
  return ((void*)0);

 entry->cmd = cmd;

 spin_lock(&bc->queue_lock);
 list_add_tail(&entry->list, &bc->async_cmd_list);
 spin_unlock(&bc->queue_lock);

 return entry;
}
