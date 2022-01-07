
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct filer_table {int dummy; } ;







 int RQFCR_PID_L4P_MASK ;
 int RQFCR_PID_MAC_MASK ;
 int RQFCR_PID_PORT_MASK ;

 int RQFCR_PID_PRI_MASK ;





 int RQFCR_PID_VID_MASK ;
 int gfar_set_general_attribute (int,int,int,struct filer_table*) ;

__attribute__((used)) static void gfar_set_attribute(u32 value, u32 mask, u32 flag,
          struct filer_table *tab)
{
 switch (flag) {

 case 133:
  if (!(value | mask))
   return;
  mask |= RQFCR_PID_PRI_MASK;
  break;

 case 134:
 case 129:
  if (!~(mask | RQFCR_PID_L4P_MASK))
   return;
  if (!mask)
   mask = ~0;
  else
   mask |= RQFCR_PID_L4P_MASK;
  break;

 case 128:
  if (!(value | mask))
   return;
  mask |= RQFCR_PID_VID_MASK;
  break;

 case 136:
 case 130:
 case 135:
  if (!~(mask | RQFCR_PID_PORT_MASK))
   return;
  if (!mask)
   mask = ~0;
  else
   mask |= RQFCR_PID_PORT_MASK;
  break;

 case 138:
 case 137:
 case 132:
 case 131:
  if (!(value | mask))
   return;
  mask |= RQFCR_PID_MAC_MASK;
  break;

 default:
  if (!~mask)
   return;
  if (!mask)
   mask = ~0;
  break;
 }
 gfar_set_general_attribute(value, mask, flag, tab);
}
