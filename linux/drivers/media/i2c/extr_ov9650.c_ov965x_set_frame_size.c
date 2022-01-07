
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ov965x {TYPE_1__* frame_size; } ;
struct TYPE_2__ {int * regs; } ;


 int NUM_FMT_REGS ;
 int * frame_size_reg_addr ;
 int ov965x_write (struct ov965x*,int ,int ) ;

__attribute__((used)) static int ov965x_set_frame_size(struct ov965x *ov965x)
{
 int i, ret = 0;

 for (i = 0; ret == 0 && i < NUM_FMT_REGS; i++)
  ret = ov965x_write(ov965x, frame_size_reg_addr[i],
       ov965x->frame_size->regs[i]);
 return ret;
}
