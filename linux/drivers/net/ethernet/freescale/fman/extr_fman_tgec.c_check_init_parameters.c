
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_mac {scalar_t__ max_speed; scalar_t__ addr; int event_cb; int exception_cb; } ;


 int EINVAL ;
 scalar_t__ SPEED_10000 ;
 int pr_err (char*) ;

__attribute__((used)) static int check_init_parameters(struct fman_mac *tgec)
{
 if (tgec->max_speed < SPEED_10000) {
  pr_err("10G MAC driver only support 10G speed\n");
  return -EINVAL;
 }
 if (tgec->addr == 0) {
  pr_err("Ethernet 10G MAC Must have valid MAC Address\n");
  return -EINVAL;
 }
 if (!tgec->exception_cb) {
  pr_err("uninitialized exception_cb\n");
  return -EINVAL;
 }
 if (!tgec->event_cb) {
  pr_err("uninitialized event_cb\n");
  return -EINVAL;
 }

 return 0;
}
