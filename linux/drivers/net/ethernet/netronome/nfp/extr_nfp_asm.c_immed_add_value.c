
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;


 int immed_can_modify (int ) ;
 scalar_t__ immed_get_value (int ) ;
 int immed_set_value (int *,scalar_t__) ;

void immed_add_value(u64 *instr, u16 offset)
{
 u16 val;

 if (!immed_can_modify(*instr))
  return;

 val = immed_get_value(*instr);
 immed_set_value(instr, val + offset);
}
