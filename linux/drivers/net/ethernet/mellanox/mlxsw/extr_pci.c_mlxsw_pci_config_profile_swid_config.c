
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_swid_config {int properties; scalar_t__ used_properties; int type; scalar_t__ used_type; } ;
struct mlxsw_pci {int dummy; } ;


 int mlxsw_cmd_mbox_config_profile_swid_config_mask_set (char*,int,int) ;
 int mlxsw_cmd_mbox_config_profile_swid_config_properties_set (char*,int,int ) ;
 int mlxsw_cmd_mbox_config_profile_swid_config_type_set (char*,int,int ) ;

__attribute__((used)) static void
mlxsw_pci_config_profile_swid_config(struct mlxsw_pci *mlxsw_pci,
         char *mbox, int index,
         const struct mlxsw_swid_config *swid)
{
 u8 mask = 0;

 if (swid->used_type) {
  mlxsw_cmd_mbox_config_profile_swid_config_type_set(
   mbox, index, swid->type);
  mask |= 1;
 }
 if (swid->used_properties) {
  mlxsw_cmd_mbox_config_profile_swid_config_properties_set(
   mbox, index, swid->properties);
  mask |= 2;
 }
 mlxsw_cmd_mbox_config_profile_swid_config_mask_set(mbox, index, mask);
}
