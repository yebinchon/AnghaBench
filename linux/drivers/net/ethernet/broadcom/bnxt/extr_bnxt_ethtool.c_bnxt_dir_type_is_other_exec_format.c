
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static bool bnxt_dir_type_is_other_exec_format(u16 dir_type)
{
 switch (dir_type) {
 case 136:
 case 134:
 case 129:
 case 128:
 case 133:
 case 135:
 case 132:
 case 130:
 case 131:
  return 1;
 }

 return 0;
}
