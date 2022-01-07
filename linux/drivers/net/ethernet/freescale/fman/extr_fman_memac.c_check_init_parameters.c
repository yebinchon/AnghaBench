
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_mac {scalar_t__ addr; int event_cb; int exception_cb; } ;


 int EINVAL ;
 int pr_err (char*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int check_init_parameters(struct fman_mac *memac)
{
 if (memac->addr == 0) {
  pr_err("Ethernet MAC must have a valid MAC address\n");
  return -EINVAL;
 }
 if (!memac->exception_cb) {
  pr_err("Uninitialized exception handler\n");
  return -EINVAL;
 }
 if (!memac->event_cb) {
  pr_warn("Uninitialize event handler\n");
  return -EINVAL;
 }

 return 0;
}
