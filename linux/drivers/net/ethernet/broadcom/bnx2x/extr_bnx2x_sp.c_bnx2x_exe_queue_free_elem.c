
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_exeq_elem {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*) ;
 int kfree (struct bnx2x_exeq_elem*) ;

__attribute__((used)) static inline void bnx2x_exe_queue_free_elem(struct bnx2x *bp,
          struct bnx2x_exeq_elem *elem)
{
 DP(BNX2X_MSG_SP, "Deleting an exe_queue element\n");
 kfree(elem);
}
