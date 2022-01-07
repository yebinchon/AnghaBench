
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t erasesize; } ;


 int cond_resched () ;
 int countdiffs (unsigned char*,unsigned char*,int,int,int*,int*) ;
 TYPE_1__* mtd ;
 int pgcnt ;
 int pgsize ;
 int pr_info (char*,...) ;
 int print_bufs (unsigned char*,unsigned char*,int,int) ;
 int printk (char*) ;

__attribute__((used)) static void report_corrupt(unsigned char *read, unsigned char *written)
{
 int i;
 int bytes, bits, pages, first;
 int offset, len;
 size_t check_len = mtd->erasesize;

 if (pgcnt)
  check_len = pgcnt * pgsize;

 bytes = bits = pages = 0;
 for (i = 0; i < check_len; i += pgsize)
  if (countdiffs(written, read, i, pgsize, &bytes,
          &bits) >= 0)
   pages++;

 pr_info("verify fails on %d pages, %d bytes/%d bits\n",
        pages, bytes, bits);
 pr_info("The following is a list of all differences between"
        " what was read from flash and what was expected\n");

 for (i = 0; i < check_len; i += pgsize) {
  cond_resched();
  bytes = bits = 0;
  first = countdiffs(written, read, i, pgsize, &bytes,
       &bits);
  if (first < 0)
   continue;

  printk("-------------------------------------------------------"
         "----------------------------------\n");

  pr_info("Page %zd has %d bytes/%d bits failing verify,"
         " starting at offset 0x%x\n",
         (mtd->erasesize - check_len + i) / pgsize,
         bytes, bits, first);

  offset = first & ~0x7;
  len = ((first + bytes) | 0x7) + 1 - offset;

  print_bufs(read, written, offset, len);
 }
}
