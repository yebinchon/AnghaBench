
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool i2c_safe_reg(unsigned char reg)
{
 switch (reg) {
 case 138:
 case 137:
 case 136:
 case 135:
 case 140:
 case 141:
 case 128:
 case 139:
 case 134:
 case 144:
 case 143:
 case 142:
 case 133:
 case 131:
 case 130:
 case 132:
 case 129:
  return 1;
 default:
  return 0;
 }
}
