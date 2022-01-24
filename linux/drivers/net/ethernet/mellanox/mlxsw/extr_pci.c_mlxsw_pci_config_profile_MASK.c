#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlxsw_res {int dummy; } ;
struct mlxsw_pci {scalar_t__ max_cqe_ver; int /*<<< orphan*/  core; } ;
struct mlxsw_config_profile {int /*<<< orphan*/ * swid_config; scalar_t__ used_kvd_sizes; int /*<<< orphan*/  adaptive_routing_group_cap; scalar_t__ used_adaptive_routing_group_cap; int /*<<< orphan*/  ar_sec; scalar_t__ used_ar_sec; int /*<<< orphan*/  max_pkey; scalar_t__ used_max_pkey; int /*<<< orphan*/  max_ib_mc; scalar_t__ used_max_ib_mc; int /*<<< orphan*/  flood_mode; scalar_t__ used_flood_mode; int /*<<< orphan*/  fid_flood_table_size; int /*<<< orphan*/  max_fid_flood_tables; int /*<<< orphan*/  fid_offset_flood_table_size; int /*<<< orphan*/  max_fid_offset_flood_tables; int /*<<< orphan*/  max_vid_flood_tables; int /*<<< orphan*/  max_flood_tables; scalar_t__ used_flood_tables; int /*<<< orphan*/  max_regions; scalar_t__ used_max_regions; int /*<<< orphan*/  max_vlan_groups; scalar_t__ used_max_vlan_groups; int /*<<< orphan*/  max_system_port; scalar_t__ used_max_system_port; int /*<<< orphan*/  max_pgt; scalar_t__ used_max_pgt; int /*<<< orphan*/  max_mid; scalar_t__ used_max_mid; int /*<<< orphan*/  max_vepa_channels; scalar_t__ used_max_vepa_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVD_DOUBLE_SIZE ; 
 int /*<<< orphan*/  KVD_LINEAR_SIZE ; 
 int /*<<< orphan*/  KVD_SINGLE_SIZE ; 
 int /*<<< orphan*/  KVD_SIZE ; 
 int MLXSW_CONFIG_PROFILE_SWID_COUNT ; 
 scalar_t__ MLXSW_PCI_CQE_V0 ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_res*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlxsw_res*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int) ; 
 int /*<<< orphan*/  FUNC26 (char*,int) ; 
 int /*<<< orphan*/  FUNC27 (char*,int) ; 
 int /*<<< orphan*/  FUNC28 (char*,int) ; 
 int /*<<< orphan*/  FUNC29 (char*,int) ; 
 int /*<<< orphan*/  FUNC30 (char*,int) ; 
 int /*<<< orphan*/  FUNC31 (char*,int) ; 
 int /*<<< orphan*/  FUNC32 (char*,int) ; 
 int /*<<< orphan*/  FUNC33 (char*,int) ; 
 int /*<<< orphan*/  FUNC34 (char*,int) ; 
 int /*<<< orphan*/  FUNC35 (char*,int) ; 
 int /*<<< orphan*/  FUNC36 (char*,int) ; 
 int /*<<< orphan*/  FUNC37 (char*,int) ; 
 int /*<<< orphan*/  FUNC38 (char*,int) ; 
 int /*<<< orphan*/  FUNC39 (char*,int) ; 
 int /*<<< orphan*/  FUNC40 (char*) ; 
 int /*<<< orphan*/  FUNC41 (struct mlxsw_pci*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC42 (struct mlxsw_pci*,struct mlxsw_config_profile const*,struct mlxsw_res*) ; 

__attribute__((used)) static int FUNC43(struct mlxsw_pci *mlxsw_pci, char *mbox,
				    const struct mlxsw_config_profile *profile,
				    struct mlxsw_res *res)
{
	int i;
	int err;

	FUNC40(mbox);

	if (profile->used_max_vepa_channels) {
		FUNC38(
			mbox, 1);
		FUNC21(
			mbox, profile->max_vepa_channels);
	}
	if (profile->used_max_mid) {
		FUNC33(
			mbox, 1);
		FUNC16(
			mbox, profile->max_mid);
	}
	if (profile->used_max_pgt) {
		FUNC34(
			mbox, 1);
		FUNC17(
			mbox, profile->max_pgt);
	}
	if (profile->used_max_system_port) {
		FUNC37(
			mbox, 1);
		FUNC20(
			mbox, profile->max_system_port);
	}
	if (profile->used_max_vlan_groups) {
		FUNC39(
			mbox, 1);
		FUNC23(
			mbox, profile->max_vlan_groups);
	}
	if (profile->used_max_regions) {
		FUNC36(
			mbox, 1);
		FUNC19(
			mbox, profile->max_regions);
	}
	if (profile->used_flood_tables) {
		FUNC28(
			mbox, 1);
		FUNC14(
			mbox, profile->max_flood_tables);
		FUNC22(
			mbox, profile->max_vid_flood_tables);
		FUNC13(
			mbox, profile->max_fid_offset_flood_tables);
		FUNC7(
			mbox, profile->fid_offset_flood_table_size);
		FUNC12(
			mbox, profile->max_fid_flood_tables);
		FUNC6(
			mbox, profile->fid_flood_table_size);
	}
	if (profile->used_flood_mode) {
		FUNC27(
			mbox, 1);
		FUNC8(
			mbox, profile->flood_mode);
	}
	if (profile->used_max_ib_mc) {
		FUNC32(
			mbox, 1);
		FUNC15(
			mbox, profile->max_ib_mc);
	}
	if (profile->used_max_pkey) {
		FUNC35(
			mbox, 1);
		FUNC18(
			mbox, profile->max_pkey);
	}
	if (profile->used_ar_sec) {
		FUNC25(
			mbox, 1);
		FUNC4(
			mbox, profile->ar_sec);
	}
	if (profile->used_adaptive_routing_group_cap) {
		FUNC24(
			mbox, 1);
		FUNC3(
			mbox, profile->adaptive_routing_group_cap);
	}
	if (profile->used_kvd_sizes && FUNC1(res, KVD_SIZE)) {
		err = FUNC42(mlxsw_pci, profile, res);
		if (err)
			return err;

		FUNC31(mbox, 1);
		FUNC11(mbox,
					FUNC0(res, KVD_LINEAR_SIZE));
		FUNC30(mbox,
									   1);
		FUNC10(mbox,
					FUNC0(res, KVD_SINGLE_SIZE));
		FUNC29(
								mbox, 1);
		FUNC9(mbox,
					FUNC0(res, KVD_DOUBLE_SIZE));
	}

	for (i = 0; i < MLXSW_CONFIG_PROFILE_SWID_COUNT; i++)
		FUNC41(mlxsw_pci, mbox, i,
						     &profile->swid_config[i]);

	if (mlxsw_pci->max_cqe_ver > MLXSW_PCI_CQE_V0) {
		FUNC26(mbox, 1);
		FUNC5(mbox, 1);
	}

	return FUNC2(mlxsw_pci->core, mbox);
}