
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlan_list {TYPE_1__* buffer; int frame_size; int c_stat; int forward; } ;
struct TYPE_2__ {int address; int count; } ;


 int pr_info (char*,...) ;

__attribute__((used)) static void tlan_print_list(struct tlan_list *list, char *type, int num)
{
 int i;

 pr_info("%s List %d at %p\n", type, num, list);
 pr_info("   Forward    = 0x%08x\n", list->forward);
 pr_info("   CSTAT      = 0x%04hx\n", list->c_stat);
 pr_info("   Frame Size = 0x%04hx\n", list->frame_size);

 for (i = 0; i < 2; i++) {
  pr_info("   Buffer[%d].count, addr = 0x%08x, 0x%08x\n",
   i, list->buffer[i].count, list->buffer[i].address);
 }

}
