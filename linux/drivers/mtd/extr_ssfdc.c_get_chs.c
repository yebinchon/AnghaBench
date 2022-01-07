
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long size; unsigned short cyl; unsigned char head; unsigned char sec; } ;


 TYPE_1__* chs_table ;

__attribute__((used)) static int get_chs(unsigned long size, unsigned short *cyl, unsigned char *head,
   unsigned char *sec)
{
 int k;
 int found = 0;

 k = 0;
 while (chs_table[k].size > 0 && size > chs_table[k].size)
  k++;

 if (chs_table[k].size > 0) {
  if (cyl)
   *cyl = chs_table[k].cyl;
  if (head)
   *head = chs_table[k].head;
  if (sec)
   *sec = chs_table[k].sec;
  found = 1;
 }

 return found;
}
