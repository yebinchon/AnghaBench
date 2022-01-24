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
typedef  scalar_t__ u16 ;
struct mlxfw_mfa2_tlv_psid {int /*<<< orphan*/  psid; } ;
struct mlxfw_mfa2_tlv_multi {int dummy; } ;
struct mlxfw_mfa2_tlv_component_ptr {int /*<<< orphan*/  component_index; } ;
struct mlxfw_mfa2_tlv {int /*<<< orphan*/  len; } ;
struct mlxfw_mfa2_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int /*<<< orphan*/  MLXFW_MFA2_TLV_COMPONENT_PTR ; 
 int /*<<< orphan*/  MLXFW_MFA2_TLV_PSID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct mlxfw_mfa2_tlv_component_ptr* FUNC1 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ; 
 int FUNC2 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv_multi const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct mlxfw_mfa2_tlv* FUNC3 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv_multi const*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mlxfw_mfa2_tlv_multi* FUNC4 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv_multi const*) ; 
 struct mlxfw_mfa2_tlv_psid* FUNC6 (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC10(const struct mlxfw_mfa2_file *mfa2_file,
			     const struct mlxfw_mfa2_tlv *dev_tlv,
			     u16 dev_idx)
{
	const struct mlxfw_mfa2_tlv_component_ptr *cptr;
	const struct mlxfw_mfa2_tlv_multi *multi;
	const struct mlxfw_mfa2_tlv_psid *psid;
	const struct mlxfw_mfa2_tlv *tlv;
	u16 cptr_count;
	u16 cptr_idx;
	int err;

	FUNC7("Device %d\n", dev_idx);

	multi = FUNC4(mfa2_file, dev_tlv);
	if (!multi) {
		FUNC8("Device %d is not a valid TLV error\n", dev_idx);
		return false;
	}

	if (!FUNC5(mfa2_file, multi))
		return false;

	/* Validate the device has PSID tlv */
	tlv = FUNC3(mfa2_file, multi,
					      MLXFW_MFA2_TLV_PSID, 0);
	if (!tlv) {
		FUNC8("Device %d does not have PSID\n", dev_idx);
		return false;
	}

	psid = FUNC6(mfa2_file, tlv);
	if (!psid) {
		FUNC8("Device %d PSID TLV is not valid\n", dev_idx);
		return false;
	}

	FUNC9("  -- Device PSID ", DUMP_PREFIX_NONE, 16, 16,
			     psid->psid, FUNC0(tlv->len), true);

	/* Validate the device has COMPONENT_PTR */
	err = FUNC2(mfa2_file, multi,
					       MLXFW_MFA2_TLV_COMPONENT_PTR,
					       &cptr_count);
	if (err)
		return false;

	if (cptr_count == 0) {
		FUNC8("Device %d has no components\n", dev_idx);
		return false;
	}

	for (cptr_idx = 0; cptr_idx < cptr_count; cptr_idx++) {
		tlv = FUNC3(mfa2_file, multi,
						      MLXFW_MFA2_TLV_COMPONENT_PTR,
						      cptr_idx);
		if (!tlv)
			return false;

		cptr = FUNC1(mfa2_file, tlv);
		if (!cptr) {
			FUNC8("Device %d COMPONENT_PTR TLV is not valid\n",
			       dev_idx);
			return false;
		}

		FUNC7("  -- Component index %d\n",
			 FUNC0(cptr->component_index));
	}
	return true;
}