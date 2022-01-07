
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ y; scalar_t__ cb; scalar_t__ cr; } ;
struct gsc_frame {TYPE_1__ addr; } ;


 int EINVAL ;
 int pr_err (char*) ;

__attribute__((used)) static int get_plane_info(struct gsc_frame *frm, u32 addr, u32 *index, u32 *ret_addr)
{
 if (frm->addr.y == addr) {
  *index = 0;
  *ret_addr = frm->addr.y;
 } else if (frm->addr.cb == addr) {
  *index = 1;
  *ret_addr = frm->addr.cb;
 } else if (frm->addr.cr == addr) {
  *index = 2;
  *ret_addr = frm->addr.cr;
 } else {
  pr_err("Plane address is wrong");
  return -EINVAL;
 }
 return 0;
}
