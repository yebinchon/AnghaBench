
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivtv_mailbox_data {int max_mbox; int busy; TYPE_1__* mbox; } ;
struct ivtv {int dummy; } ;
struct TYPE_2__ {int flags; int cmd; } ;


 int IVTV_DEBUG_WARN (char*,int,int ,int ) ;
 int clear_bit (int,int *) ;
 int readl (int *) ;
 int write_sync (int ,int *) ;

__attribute__((used)) static void clear_all_mailboxes(struct ivtv *itv, struct ivtv_mailbox_data *mbdata)
{
 int i;

 for (i = 0; i <= mbdata->max_mbox; i++) {
  IVTV_DEBUG_WARN("Clearing mailbox %d: cmd 0x%08x flags 0x%08x\n",
   i, readl(&mbdata->mbox[i].cmd), readl(&mbdata->mbox[i].flags));
  write_sync(0, &mbdata->mbox[i].flags);
  clear_bit(i, &mbdata->busy);
 }
}
