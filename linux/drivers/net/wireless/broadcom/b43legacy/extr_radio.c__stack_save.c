
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 size_t B43legacy_INTERFSTACK_SIZE ;
 int B43legacy_WARN_ON (int) ;

__attribute__((used)) static void _stack_save(u32 *_stackptr, size_t *stackidx,
   u8 id, u16 offset, u16 value)
{
 u32 *stackptr = &(_stackptr[*stackidx]);

 B43legacy_WARN_ON(!((offset & 0xE000) == 0x0000));
 B43legacy_WARN_ON(!((id & 0xF8) == 0x00));
 *stackptr = offset;
 *stackptr |= ((u32)id) << 13;
 *stackptr |= ((u32)value) << 16;
 (*stackidx)++;
 B43legacy_WARN_ON(!(*stackidx < B43legacy_INTERFSTACK_SIZE));
}
