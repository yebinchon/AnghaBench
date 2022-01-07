
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_desc_info {int alloc; int mask; } ;


 int MIN_DESC_SHIFT ;
 int pr_alert (char*) ;

__attribute__((used)) static void ksz_check_desc_num(struct ksz_desc_info *info)
{


 int alloc = info->alloc;
 int shift;

 shift = 0;
 while (!(alloc & 1)) {
  shift++;
  alloc >>= 1;
 }
 if (alloc != 1 || shift < 2) {
  pr_alert("Hardware descriptor numbers not right!\n");
  while (alloc) {
   shift++;
   alloc >>= 1;
  }
  if (shift < 2)
   shift = 2;
  alloc = 1 << shift;
  info->alloc = alloc;
 }
 info->mask = info->alloc - 1;
}
