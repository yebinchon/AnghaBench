
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_desc_info {scalar_t__ next; scalar_t__ last; int alloc; int avail; int ring; int cur; } ;



__attribute__((used)) static void hw_reset_pkts(struct ksz_desc_info *info)
{
 info->cur = info->ring;
 info->avail = info->alloc;
 info->last = info->next = 0;
}
