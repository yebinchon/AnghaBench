
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;


 int dbell_fire_entries (size_t) ;
 size_t max_notify_idx ;

void vmci_dbell_scan_notification_entries(u8 *bitmap)
{
 u32 idx;

 for (idx = 0; idx < max_notify_idx; idx++) {
  if (bitmap[idx] & 0x1) {
   bitmap[idx] &= ~1;
   dbell_fire_entries(idx);
  }
 }
}
