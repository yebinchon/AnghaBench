
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ivtv_mailbox_data {TYPE_1__* mbox; int busy; } ;
struct ivtv {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int IVTV_MBOX_DRIVER_BUSY ;
 int IVTV_MBOX_FIRMWARE_DONE ;
 int IVTV_MBOX_FREE ;
 int readl (int *) ;
 int test_and_set_bit (int,int *) ;
 int write_sync (int ,int *) ;

__attribute__((used)) static int try_mailbox(struct ivtv *itv, struct ivtv_mailbox_data *mbdata, int mb)
{
 u32 flags = readl(&mbdata->mbox[mb].flags);
 int is_free = flags == IVTV_MBOX_FREE || (flags & IVTV_MBOX_FIRMWARE_DONE);


 if (is_free && !test_and_set_bit(mb, &mbdata->busy)) {
  write_sync(IVTV_MBOX_DRIVER_BUSY, &mbdata->mbox[mb].flags);
  return 1;
 }
 return 0;
}
