
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int vlan_pri_map; } ;
struct TYPE_4__ {TYPE_1__ tp; } ;
struct adapter {TYPE_2__ params; } ;





 int FT_ETHERTYPE_W ;
 int FT_FCOE_W ;
 int FT_FRAGMENTATION_W ;
 int FT_MACMATCH_W ;
 int FT_MPSHITTYPE_W ;
 int FT_PORT_W ;
 int FT_PROTOCOL_W ;
 int FT_TOS_W ;
 int FT_VLAN_W ;
 int FT_VNIC_ID_W ;
int t4_filter_field_shift(const struct adapter *adap, int filter_sel)
{
 unsigned int filter_mode = adap->params.tp.vlan_pri_map;
 unsigned int sel;
 int field_shift;

 if ((filter_mode & filter_sel) == 0)
  return -1;

 for (sel = 1, field_shift = 0; sel < filter_sel; sel <<= 1) {
  switch (filter_mode & sel) {
  case 136:
   field_shift += FT_FCOE_W;
   break;
  case 132:
   field_shift += FT_PORT_W;
   break;
  case 128:
   field_shift += FT_VNIC_ID_W;
   break;
  case 129:
   field_shift += FT_VLAN_W;
   break;
  case 130:
   field_shift += FT_TOS_W;
   break;
  case 131:
   field_shift += FT_PROTOCOL_W;
   break;
  case 137:
   field_shift += FT_ETHERTYPE_W;
   break;
  case 134:
   field_shift += FT_MACMATCH_W;
   break;
  case 133:
   field_shift += FT_MPSHITTYPE_W;
   break;
  case 135:
   field_shift += FT_FRAGMENTATION_W;
   break;
  }
 }
 return field_shift;
}
