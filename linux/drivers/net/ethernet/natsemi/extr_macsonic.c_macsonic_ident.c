
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nubus_rsrc {scalar_t__ dr_hw; scalar_t__ dr_sw; TYPE_1__* board; } ;
struct TYPE_2__ {int name; } ;


 int MACSONIC_APPLE ;
 int MACSONIC_APPLE16 ;
 int MACSONIC_DAYNA ;
 int MACSONIC_DAYNALINK ;
 int MACSONIC_DUODOCK ;
 scalar_t__ NUBUS_DRHW_APPLE_SONIC_LC ;
 scalar_t__ NUBUS_DRHW_ASANTE_LC ;
 scalar_t__ NUBUS_DRHW_SMC9194 ;
 scalar_t__ NUBUS_DRHW_SONIC ;
 scalar_t__ NUBUS_DRSW_APPLE ;
 scalar_t__ NUBUS_DRSW_DAYNA ;
 scalar_t__ NUBUS_DRSW_SONIC_LC ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static int macsonic_ident(struct nubus_rsrc *fres)
{
 if (fres->dr_hw == NUBUS_DRHW_ASANTE_LC &&
     fres->dr_sw == NUBUS_DRSW_SONIC_LC)
  return MACSONIC_DAYNALINK;
 if (fres->dr_hw == NUBUS_DRHW_SONIC &&
     fres->dr_sw == NUBUS_DRSW_APPLE) {

  if (strstr(fres->board->name, "DuoDock"))
   return MACSONIC_DUODOCK;
  else
   return MACSONIC_APPLE;
 }

 if (fres->dr_hw == NUBUS_DRHW_SMC9194 &&
     fres->dr_sw == NUBUS_DRSW_DAYNA)
  return MACSONIC_DAYNA;

 if (fres->dr_hw == NUBUS_DRHW_APPLE_SONIC_LC &&
     fres->dr_sw == 0) {
  return MACSONIC_APPLE16;
 }
 return -1;
}
