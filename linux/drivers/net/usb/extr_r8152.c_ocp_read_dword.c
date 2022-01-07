
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct r8152 {int dummy; } ;
typedef int data ;
typedef int __le32 ;


 int __le32_to_cpu (int ) ;
 int generic_ocp_read (struct r8152*,int ,int,int *,int ) ;

__attribute__((used)) static u32 ocp_read_dword(struct r8152 *tp, u16 type, u16 index)
{
 __le32 data;

 generic_ocp_read(tp, index, sizeof(data), &data, type);

 return __le32_to_cpu(data);
}
