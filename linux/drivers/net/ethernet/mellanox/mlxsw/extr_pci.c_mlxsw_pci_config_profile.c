
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_res {int dummy; } ;
struct mlxsw_pci {scalar_t__ max_cqe_ver; int core; } ;
struct mlxsw_config_profile {int * swid_config; scalar_t__ used_kvd_sizes; int adaptive_routing_group_cap; scalar_t__ used_adaptive_routing_group_cap; int ar_sec; scalar_t__ used_ar_sec; int max_pkey; scalar_t__ used_max_pkey; int max_ib_mc; scalar_t__ used_max_ib_mc; int flood_mode; scalar_t__ used_flood_mode; int fid_flood_table_size; int max_fid_flood_tables; int fid_offset_flood_table_size; int max_fid_offset_flood_tables; int max_vid_flood_tables; int max_flood_tables; scalar_t__ used_flood_tables; int max_regions; scalar_t__ used_max_regions; int max_vlan_groups; scalar_t__ used_max_vlan_groups; int max_system_port; scalar_t__ used_max_system_port; int max_pgt; scalar_t__ used_max_pgt; int max_mid; scalar_t__ used_max_mid; int max_vepa_channels; scalar_t__ used_max_vepa_channels; } ;


 int KVD_DOUBLE_SIZE ;
 int KVD_LINEAR_SIZE ;
 int KVD_SINGLE_SIZE ;
 int KVD_SIZE ;
 int MLXSW_CONFIG_PROFILE_SWID_COUNT ;
 scalar_t__ MLXSW_PCI_CQE_V0 ;
 int MLXSW_RES_GET (struct mlxsw_res*,int ) ;
 scalar_t__ MLXSW_RES_VALID (struct mlxsw_res*,int ) ;
 int mlxsw_cmd_config_profile_set (int ,char*) ;
 int mlxsw_cmd_mbox_config_profile_adaptive_routing_group_cap_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_ar_sec_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_cqe_version_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_fid_flood_table_size_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_fid_offset_flood_table_size_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_flood_mode_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_kvd_hash_double_size_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_kvd_hash_single_size_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_kvd_linear_size_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_fid_flood_tables_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_fid_offset_flood_tables_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_flood_tables_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_ib_mc_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_mid_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_pgt_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_pkey_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_regions_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_system_port_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_vepa_channels_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_vid_flood_tables_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_max_vlan_groups_set (char*,int ) ;
 int mlxsw_cmd_mbox_config_profile_set_adaptive_routing_group_cap_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_ar_sec_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_cqe_version_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_flood_mode_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_flood_tables_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_kvd_hash_double_size_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_kvd_hash_single_size_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_kvd_linear_size_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_max_ib_mc_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_max_mid_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_max_pgt_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_max_pkey_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_max_regions_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_max_system_port_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_max_vepa_channels_set (char*,int) ;
 int mlxsw_cmd_mbox_config_profile_set_max_vlan_groups_set (char*,int) ;
 int mlxsw_cmd_mbox_zero (char*) ;
 int mlxsw_pci_config_profile_swid_config (struct mlxsw_pci*,char*,int,int *) ;
 int mlxsw_pci_profile_get_kvd_sizes (struct mlxsw_pci*,struct mlxsw_config_profile const*,struct mlxsw_res*) ;

__attribute__((used)) static int mlxsw_pci_config_profile(struct mlxsw_pci *mlxsw_pci, char *mbox,
        const struct mlxsw_config_profile *profile,
        struct mlxsw_res *res)
{
 int i;
 int err;

 mlxsw_cmd_mbox_zero(mbox);

 if (profile->used_max_vepa_channels) {
  mlxsw_cmd_mbox_config_profile_set_max_vepa_channels_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_max_vepa_channels_set(
   mbox, profile->max_vepa_channels);
 }
 if (profile->used_max_mid) {
  mlxsw_cmd_mbox_config_profile_set_max_mid_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_max_mid_set(
   mbox, profile->max_mid);
 }
 if (profile->used_max_pgt) {
  mlxsw_cmd_mbox_config_profile_set_max_pgt_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_max_pgt_set(
   mbox, profile->max_pgt);
 }
 if (profile->used_max_system_port) {
  mlxsw_cmd_mbox_config_profile_set_max_system_port_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_max_system_port_set(
   mbox, profile->max_system_port);
 }
 if (profile->used_max_vlan_groups) {
  mlxsw_cmd_mbox_config_profile_set_max_vlan_groups_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_max_vlan_groups_set(
   mbox, profile->max_vlan_groups);
 }
 if (profile->used_max_regions) {
  mlxsw_cmd_mbox_config_profile_set_max_regions_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_max_regions_set(
   mbox, profile->max_regions);
 }
 if (profile->used_flood_tables) {
  mlxsw_cmd_mbox_config_profile_set_flood_tables_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_max_flood_tables_set(
   mbox, profile->max_flood_tables);
  mlxsw_cmd_mbox_config_profile_max_vid_flood_tables_set(
   mbox, profile->max_vid_flood_tables);
  mlxsw_cmd_mbox_config_profile_max_fid_offset_flood_tables_set(
   mbox, profile->max_fid_offset_flood_tables);
  mlxsw_cmd_mbox_config_profile_fid_offset_flood_table_size_set(
   mbox, profile->fid_offset_flood_table_size);
  mlxsw_cmd_mbox_config_profile_max_fid_flood_tables_set(
   mbox, profile->max_fid_flood_tables);
  mlxsw_cmd_mbox_config_profile_fid_flood_table_size_set(
   mbox, profile->fid_flood_table_size);
 }
 if (profile->used_flood_mode) {
  mlxsw_cmd_mbox_config_profile_set_flood_mode_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_flood_mode_set(
   mbox, profile->flood_mode);
 }
 if (profile->used_max_ib_mc) {
  mlxsw_cmd_mbox_config_profile_set_max_ib_mc_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_max_ib_mc_set(
   mbox, profile->max_ib_mc);
 }
 if (profile->used_max_pkey) {
  mlxsw_cmd_mbox_config_profile_set_max_pkey_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_max_pkey_set(
   mbox, profile->max_pkey);
 }
 if (profile->used_ar_sec) {
  mlxsw_cmd_mbox_config_profile_set_ar_sec_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_ar_sec_set(
   mbox, profile->ar_sec);
 }
 if (profile->used_adaptive_routing_group_cap) {
  mlxsw_cmd_mbox_config_profile_set_adaptive_routing_group_cap_set(
   mbox, 1);
  mlxsw_cmd_mbox_config_profile_adaptive_routing_group_cap_set(
   mbox, profile->adaptive_routing_group_cap);
 }
 if (profile->used_kvd_sizes && MLXSW_RES_VALID(res, KVD_SIZE)) {
  err = mlxsw_pci_profile_get_kvd_sizes(mlxsw_pci, profile, res);
  if (err)
   return err;

  mlxsw_cmd_mbox_config_profile_set_kvd_linear_size_set(mbox, 1);
  mlxsw_cmd_mbox_config_profile_kvd_linear_size_set(mbox,
     MLXSW_RES_GET(res, KVD_LINEAR_SIZE));
  mlxsw_cmd_mbox_config_profile_set_kvd_hash_single_size_set(mbox,
            1);
  mlxsw_cmd_mbox_config_profile_kvd_hash_single_size_set(mbox,
     MLXSW_RES_GET(res, KVD_SINGLE_SIZE));
  mlxsw_cmd_mbox_config_profile_set_kvd_hash_double_size_set(
        mbox, 1);
  mlxsw_cmd_mbox_config_profile_kvd_hash_double_size_set(mbox,
     MLXSW_RES_GET(res, KVD_DOUBLE_SIZE));
 }

 for (i = 0; i < MLXSW_CONFIG_PROFILE_SWID_COUNT; i++)
  mlxsw_pci_config_profile_swid_config(mlxsw_pci, mbox, i,
           &profile->swid_config[i]);

 if (mlxsw_pci->max_cqe_ver > MLXSW_PCI_CQE_V0) {
  mlxsw_cmd_mbox_config_profile_set_cqe_version_set(mbox, 1);
  mlxsw_cmd_mbox_config_profile_cqe_version_set(mbox, 1);
 }

 return mlxsw_cmd_config_profile_set(mlxsw_pci->core, mbox);
}
