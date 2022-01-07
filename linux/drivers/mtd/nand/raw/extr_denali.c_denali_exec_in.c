
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct denali_controller {int dummy; } ;


 int denali_exec_in16 (struct denali_controller*,int ,int *,unsigned int) ;
 int denali_exec_in8 (struct denali_controller*,int ,int *,unsigned int) ;

__attribute__((used)) static void denali_exec_in(struct denali_controller *denali, u32 type,
      u8 *buf, unsigned int len, bool width16)
{
 if (width16)
  denali_exec_in16(denali, type, buf, len);
 else
  denali_exec_in8(denali, type, buf, len);
}
