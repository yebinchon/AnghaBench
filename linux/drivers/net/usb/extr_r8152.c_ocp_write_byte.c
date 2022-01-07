
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int tmp ;
struct r8152 {int dummy; } ;
typedef int __le32 ;


 int BYTE_EN_BYTE ;
 int __cpu_to_le32 (int) ;
 int generic_ocp_write (struct r8152*,int,int,int,int *,int) ;

__attribute__((used)) static void ocp_write_byte(struct r8152 *tp, u16 type, u16 index, u32 data)
{
 u32 mask = 0xff;
 __le32 tmp;
 u16 byen = BYTE_EN_BYTE;
 u8 shift = index & 3;

 data &= mask;

 if (index & 3) {
  byen <<= shift;
  mask <<= (shift * 8);
  data <<= (shift * 8);
  index &= ~3;
 }

 tmp = __cpu_to_le32(data);

 generic_ocp_write(tp, index, byen, sizeof(tmp), &tmp, type);
}
