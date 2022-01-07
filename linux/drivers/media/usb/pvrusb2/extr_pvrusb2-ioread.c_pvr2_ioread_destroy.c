
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ioread {struct pvr2_ioread* sync_key_ptr; } ;


 int PVR2_TRACE_STRUCT ;
 int kfree (struct pvr2_ioread*) ;
 int pvr2_ioread_done (struct pvr2_ioread*) ;
 int pvr2_trace (int ,char*,struct pvr2_ioread*) ;

void pvr2_ioread_destroy(struct pvr2_ioread *cp)
{
 if (!cp) return;
 pvr2_ioread_done(cp);
 pvr2_trace(PVR2_TRACE_STRUCT,"pvr2_ioread_destroy id=%p",cp);
 if (cp->sync_key_ptr) {
  kfree(cp->sync_key_ptr);
  cp->sync_key_ptr = ((void*)0);
 }
 kfree(cp);
}
