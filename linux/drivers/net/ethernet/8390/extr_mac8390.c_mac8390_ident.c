
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_rsrc {int dr_sw; int const dr_hw; } ;
typedef enum mac8390_type { ____Placeholder_mac8390_type } mac8390_type ;


 int MAC8390_APPLE ;
 int MAC8390_ASANTE ;
 int MAC8390_CABLETRON ;
 int MAC8390_DAYNA ;
 int MAC8390_FARALLON ;
 int MAC8390_INTERLAN ;
 int MAC8390_KINETICS ;
 int MAC8390_NONE ;





 int const NUBUS_DRHW_SMC9194 ;
__attribute__((used)) static enum mac8390_type mac8390_ident(struct nubus_rsrc *fres)
{
 switch (fres->dr_sw) {
 case 136:
  switch (fres->dr_hw) {
  case 141:
  case 142:
  case 137:
   return MAC8390_NONE;
  default:
   return MAC8390_APPLE;
  }
  break;

 case 135:
  switch (fres->dr_hw) {
  case 140:
   return MAC8390_NONE;
  case 139:
   return MAC8390_CABLETRON;
  default:
   return MAC8390_APPLE;
  }
  break;

 case 134:
  return MAC8390_ASANTE;
  break;

 case 128:
 case 132:
 case 131:
  if (fres->dr_hw == 139)
   return MAC8390_CABLETRON;
  else
   return MAC8390_APPLE;
  break;

 case 130:
  return MAC8390_FARALLON;
  break;

 case 129:
  switch (fres->dr_hw) {
  case 138:
   return MAC8390_INTERLAN;
  default:
   return MAC8390_KINETICS;
  }
  break;

 case 133:




  if (fres->dr_hw == NUBUS_DRHW_SMC9194 ||
      fres->dr_hw == 138)
   return MAC8390_NONE;
  else
   return MAC8390_DAYNA;
  break;
 }
 return MAC8390_NONE;
}
