
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bnx2x_qable_obj {int dummy; } bnx2x_qable_obj ;
struct bnx2x_exe_queue_obj {int exe_chunk_len; int get; int execute; int optimize; int remove; int validate; union bnx2x_qable_obj* owner; int lock; int pending_comp; int exe_queue; } ;
struct bnx2x {int dummy; } ;
typedef int exe_q_validate ;
typedef int exe_q_remove ;
typedef int exe_q_optimize ;
typedef int exe_q_get ;
typedef int exe_q_execute ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*,int) ;
 int INIT_LIST_HEAD (int *) ;
 int memset (struct bnx2x_exe_queue_obj*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline void bnx2x_exe_queue_init(struct bnx2x *bp,
     struct bnx2x_exe_queue_obj *o,
     int exe_len,
     union bnx2x_qable_obj *owner,
     exe_q_validate validate,
     exe_q_remove remove,
     exe_q_optimize optimize,
     exe_q_execute exec,
     exe_q_get get)
{
 memset(o, 0, sizeof(*o));

 INIT_LIST_HEAD(&o->exe_queue);
 INIT_LIST_HEAD(&o->pending_comp);

 spin_lock_init(&o->lock);

 o->exe_chunk_len = exe_len;
 o->owner = owner;


 o->validate = validate;
 o->remove = remove;
 o->optimize = optimize;
 o->execute = exec;
 o->get = get;

 DP(BNX2X_MSG_SP, "Setup the execution queue with the chunk length of %d\n",
    exe_len);
}
