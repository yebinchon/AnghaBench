
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;


 scalar_t__ br_get_offset (int ) ;
 int br_set_offset (int *,scalar_t__) ;

void br_add_offset(u64 *instr, u16 offset)
{
 u16 addr;

 addr = br_get_offset(*instr);
 br_set_offset(instr, addr + offset);
}
