
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


 int BYTE_EN_WORD ;
 int __le32_to_cpu (int ) ;
 int generic_ocp_read (struct r8152*,int,int,int *,int) ;

__attribute__((used)) static u16 ocp_read_word(struct r8152 *tp, u16 type, u16 index)
{
 u32 data;
 __le32 tmp;
 u16 byen = BYTE_EN_WORD;
 u8 shift = index & 2;

 index &= ~3;
 byen <<= shift;

 generic_ocp_read(tp, index, sizeof(tmp), &tmp, type | byen);

 data = __le32_to_cpu(tmp);
 data >>= (shift * 8);
 data &= 0xffff;

 return (u16)data;
}
