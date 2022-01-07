
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static void update_latch_offset(u8 *offset, int i)
{

 if (unlikely(*offset == 17))
  *offset = 24;

 if (unlikely(*offset == 16))
  *offset = 25;
 if ((i == 3) && (*offset >= 24))
  *offset += 2;
}
