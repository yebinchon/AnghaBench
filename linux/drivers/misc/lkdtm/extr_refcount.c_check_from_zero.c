
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;




 int pr_info (char*,...) ;
 int pr_warn (char*) ;
 int refcount_read (int *) ;

__attribute__((used)) static void check_from_zero(refcount_t *ref)
{
 switch (refcount_read(ref)) {
 case 0:
  pr_info("Zero detected: stayed at zero\n");
  break;
 case 128:
  pr_info("Zero detected: saturated\n");
  break;
 case 129:
  pr_warn("Zero detected: unsafely reset to max\n");
  break;
 default:
  pr_info("Fail: zero not detected, incremented to %d\n",
   refcount_read(ref));
 }
}
