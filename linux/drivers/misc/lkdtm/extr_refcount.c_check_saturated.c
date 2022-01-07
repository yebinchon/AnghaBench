
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;




 int pr_err (char*,int) ;
 int pr_info (char*) ;
 int pr_warn (char*) ;
 int refcount_read (int *) ;

__attribute__((used)) static void check_saturated(refcount_t *ref)
{
 switch (refcount_read(ref)) {
 case 128:
  pr_info("Saturation detected: still saturated\n");
  break;
 case 129:
  pr_warn("Saturation detected: unsafely reset to max\n");
  break;
 default:
  pr_err("Fail: refcount went crazy: %d\n", refcount_read(ref));
 }
}
