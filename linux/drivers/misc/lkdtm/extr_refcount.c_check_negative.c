
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;




 int pr_err (char*,int) ;
 int pr_info (char*) ;
 int pr_warn (char*,...) ;
 int refcount_read (int *) ;

__attribute__((used)) static void check_negative(refcount_t *ref, int start)
{





 if (refcount_read(ref) == start) {
  pr_warn("Still at %d: refcount_inc/add() must not inc-from-0\n",
   start);
  return;
 }

 switch (refcount_read(ref)) {
 case 128:
  pr_info("Negative detected: saturated\n");
  break;
 case 129:
  pr_warn("Negative detected: unsafely reset to max\n");
  break;
 default:
  pr_err("Fail: refcount went crazy: %d\n", refcount_read(ref));
 }
}
