
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* PTR_ALIGN (unsigned long*,int) ;
 unsigned long STACKLEAK_POISON ;
 int STACKLEAK_SEARCH_DEPTH ;
 int THREAD_SIZE ;
 int pr_err (char*,...) ;
 int pr_info (char*,...) ;

void lkdtm_STACKLEAK_ERASING(void)
{
 unsigned long *sp, left, found, i;
 const unsigned long check_depth =
   STACKLEAK_SEARCH_DEPTH / sizeof(unsigned long);





 sp = PTR_ALIGN(&i, sizeof(unsigned long));

 left = ((unsigned long)sp & (THREAD_SIZE - 1)) / sizeof(unsigned long);
 sp--;





 if (left > 1) {
  left--;
 } else {
  pr_err("FAIL: not enough stack space for the test\n");
  return;
 }

 pr_info("checking unused part of the thread stack (%lu bytes)...\n",
     left * sizeof(unsigned long));





 for (i = 0, found = 0; i < left && found <= check_depth; i++) {
  if (*(sp - i) == STACKLEAK_POISON)
   found++;
  else
   found = 0;
 }

 if (found <= check_depth) {
  pr_err("FAIL: thread stack is not erased (checked %lu bytes)\n",
      i * sizeof(unsigned long));
  return;
 }

 pr_info("first %lu bytes are unpoisoned\n",
    (i - found) * sizeof(unsigned long));


 for (; i < left; i++) {
  if (*(sp - i) != STACKLEAK_POISON) {
   pr_err("FAIL: thread stack is NOT properly erased\n");
   return;
  }
 }

 pr_info("OK: the rest of the thread stack is properly erased\n");
 return;
}
