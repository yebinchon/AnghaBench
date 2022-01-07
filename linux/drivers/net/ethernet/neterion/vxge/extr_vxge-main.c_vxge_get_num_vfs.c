
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
__attribute__((used)) static inline u32 vxge_get_num_vfs(u64 function_mode)
{
 u32 num_functions = 0;

 switch (function_mode) {
 case 134:
 case 128:
  num_functions = 8;
  break;
 case 131:
  num_functions = 1;
  break;
 case 130:
 case 136:
 case 133:
  num_functions = 17;
  break;
 case 129:
  num_functions = 4;
  break;
 case 132:
  num_functions = 2;
  break;
 case 135:
  num_functions = 8;
  break;
 }
 return num_functions;
}
