
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int kref; int * lock; } ;
typedef int spinlock_t ;


 int ibmasm_free_command ;
 int kref_put (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void command_put(struct command *cmd)
{
 unsigned long flags;
 spinlock_t *lock = cmd->lock;

 spin_lock_irqsave(lock, flags);
 kref_put(&cmd->kref, ibmasm_free_command);
 spin_unlock_irqrestore(lock, flags);
}
