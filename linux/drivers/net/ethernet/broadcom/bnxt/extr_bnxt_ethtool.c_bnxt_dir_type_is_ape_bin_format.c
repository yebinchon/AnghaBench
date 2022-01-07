
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
__attribute__((used)) static bool bnxt_dir_type_is_ape_bin_format(u16 dir_type)
{
 switch (dir_type) {
 case 130:
 case 132:
 case 131:
 case 136:
 case 135:
 case 129:
 case 128:
 case 134:
 case 133:
  return 1;
 }

 return 0;
}
