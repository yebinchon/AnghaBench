
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_prev_path_list {int undi; } ;
struct bnx2x {int dummy; } ;


 int BP_PORT (struct bnx2x*) ;
 struct bnx2x_prev_path_list* bnx2x_prev_path_get_entry (struct bnx2x*) ;
 int bnx2x_prev_sem ;
 int down (int *) ;
 int up (int *) ;

bool bnx2x_port_after_undi(struct bnx2x *bp)
{
 struct bnx2x_prev_path_list *entry;
 bool val;

 down(&bnx2x_prev_sem);

 entry = bnx2x_prev_path_get_entry(bp);
 val = !!(entry && (entry->undi & (1 << BP_PORT(bp))));

 up(&bnx2x_prev_sem);

 return val;
}
