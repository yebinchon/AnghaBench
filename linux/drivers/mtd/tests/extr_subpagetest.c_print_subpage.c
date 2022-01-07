
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,...) ;
 int subpgsize ;

__attribute__((used)) static void print_subpage(unsigned char *p)
{
 int i, j;

 for (i = 0; i < subpgsize; ) {
  for (j = 0; i < subpgsize && j < 32; ++i, ++j)
   printk("%02x", *p++);
  printk("\n");
 }
}
