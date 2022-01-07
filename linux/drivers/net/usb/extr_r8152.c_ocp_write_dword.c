
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int tmp ;
struct r8152 {int dummy; } ;
typedef int __le32 ;


 int BYTE_EN_DWORD ;
 int __cpu_to_le32 (int ) ;
 int generic_ocp_write (struct r8152*,int ,int ,int,int *,int ) ;

__attribute__((used)) static void ocp_write_dword(struct r8152 *tp, u16 type, u16 index, u32 data)
{
 __le32 tmp = __cpu_to_le32(data);

 generic_ocp_write(tp, index, BYTE_EN_DWORD, sizeof(tmp), &tmp, type);
}
