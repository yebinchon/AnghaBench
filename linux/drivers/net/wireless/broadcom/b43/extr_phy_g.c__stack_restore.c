
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 size_t B43_INTERFSTACK_SIZE ;
 int B43_WARN_ON (int) ;

__attribute__((used)) static u16 _stack_restore(u32 *stackptr, u8 id, u16 offset)
{
 size_t i;

 B43_WARN_ON(offset & 0xF000);
 B43_WARN_ON(id & 0xF0);
 for (i = 0; i < B43_INTERFSTACK_SIZE; i++, stackptr++) {
  if ((*stackptr & 0x00000FFF) != offset)
   continue;
  if (((*stackptr & 0x0000F000) >> 12) != id)
   continue;
  return ((*stackptr & 0xFFFF0000) >> 16);
 }
 B43_WARN_ON(1);

 return 0;
}
