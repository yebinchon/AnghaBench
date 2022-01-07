
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tg3 {int dummy; } ;


 int tr32 (int) ;

__attribute__((used)) static inline void tg3_rd32_loop(struct tg3 *tp, u32 *dst, u32 off, u32 len)
{
 int i;

 dst = (u32 *)((u8 *)dst + off);
 for (i = 0; i < len; i += sizeof(u32))
  *dst++ = tr32(off + i);
}
