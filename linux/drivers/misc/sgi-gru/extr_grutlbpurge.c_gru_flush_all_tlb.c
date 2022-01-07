
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_tlb_global_handle {int dummy; } ;
struct gru_state {int gs_gid; } ;


 scalar_t__ GRUMAXINVAL ;
 struct gru_tlb_global_handle* get_lock_tgh_handle (struct gru_state*) ;
 int get_unlock_tgh_handle (struct gru_tlb_global_handle*) ;
 int gru_dbg (int ,char*,int ) ;
 int grudev ;
 int tgh_invalidate (struct gru_tlb_global_handle*,int ,int ,int ,int,int,scalar_t__,int) ;

void gru_flush_all_tlb(struct gru_state *gru)
{
 struct gru_tlb_global_handle *tgh;

 gru_dbg(grudev, "gid %d\n", gru->gs_gid);
 tgh = get_lock_tgh_handle(gru);
 tgh_invalidate(tgh, 0, ~0, 0, 1, 1, GRUMAXINVAL - 1, 0xffff);
 get_unlock_tgh_handle(tgh);
}
