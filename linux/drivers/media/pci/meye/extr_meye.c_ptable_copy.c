
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * mchip_ptable; } ;


 int PAGE_SIZE ;
 int memcpy (int *,int ,int) ;
 TYPE_1__ meye ;

__attribute__((used)) static void ptable_copy(u8 *buf, int start, int size, int pt_pages)
{
 int i;

 for (i = 0; i < (size / PAGE_SIZE) * PAGE_SIZE; i += PAGE_SIZE) {
  memcpy(buf + i, meye.mchip_ptable[start++], PAGE_SIZE);
  if (start >= pt_pages)
   start = 0;
 }
 memcpy(buf + i, meye.mchip_ptable[start], size % PAGE_SIZE);
}
