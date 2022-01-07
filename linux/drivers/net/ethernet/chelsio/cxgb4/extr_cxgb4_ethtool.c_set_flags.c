
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline void set_flags(u32 *cur_flags, u32 new_flags, u32 flags)
{
 *cur_flags = (*cur_flags & ~flags) | (new_flags & flags);
}
