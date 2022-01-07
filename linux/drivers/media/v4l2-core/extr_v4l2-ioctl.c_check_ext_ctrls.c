
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ext_controls {size_t count; scalar_t__ which; size_t error_idx; TYPE_1__* controls; scalar_t__* reserved; } ;
typedef size_t __u32 ;
struct TYPE_2__ {int id; scalar_t__* reserved2; } ;


 scalar_t__ V4L2_CID_PRIVATE_BASE ;
 scalar_t__ V4L2_CTRL_ID2WHICH (int ) ;

__attribute__((used)) static int check_ext_ctrls(struct v4l2_ext_controls *c, int allow_priv)
{
 __u32 i;


 c->reserved[0] = 0;
 for (i = 0; i < c->count; i++)
  c->controls[i].reserved2[0] = 0;






 if (!allow_priv && c->which == V4L2_CID_PRIVATE_BASE)
  return 0;
 if (!c->which)
  return 1;

 for (i = 0; i < c->count; i++) {
  if (V4L2_CTRL_ID2WHICH(c->controls[i].id) != c->which) {
   c->error_idx = i;
   return 0;
  }
 }
 return 1;
}
