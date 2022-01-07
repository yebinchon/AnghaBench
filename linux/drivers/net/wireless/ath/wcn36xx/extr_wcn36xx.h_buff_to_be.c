
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cpu_to_be32 (int ) ;

__attribute__((used)) static inline void buff_to_be(u32 *buf, size_t len)
{
 int i;
 for (i = 0; i < len; i++)
  buf[i] = cpu_to_be32(buf[i]);
}
