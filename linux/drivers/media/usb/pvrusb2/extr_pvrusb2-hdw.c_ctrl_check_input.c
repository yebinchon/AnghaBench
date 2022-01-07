
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_1__* hdw; } ;
struct TYPE_2__ {unsigned long input_allowed_mask; } ;


 int PVR2_CVAL_INPUT_MAX ;

__attribute__((used)) static int ctrl_check_input(struct pvr2_ctrl *cptr,int v)
{
 if (v < 0 || v > PVR2_CVAL_INPUT_MAX)
  return 0;
 return ((1UL << v) & cptr->hdw->input_allowed_mask) != 0;
}
