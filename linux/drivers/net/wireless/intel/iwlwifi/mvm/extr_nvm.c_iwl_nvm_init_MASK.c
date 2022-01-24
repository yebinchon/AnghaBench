#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_24__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_22__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_21__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_20__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_19__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_18__ {int size; int /*<<< orphan*/ * data; } ;
struct iwl_mvm {char const* nvm_file_name; TYPE_12__* nvm_data; TYPE_10__* trans; TYPE_11__* nvm_sections; TYPE_9__ nvm_hw_blob; TYPE_8__* cfg; TYPE_7__ nvm_reg_blob; TYPE_6__ nvm_phy_sku_blob; TYPE_5__ nvm_prod_blob; TYPE_4__ nvm_calib_blob; TYPE_3__ nvm_sw_blob; } ;
struct TYPE_23__ {char* default_nvm_file_C_step; int nvm_hw_section_num; } ;
struct TYPE_17__ {TYPE_1__* base_params; } ;
struct TYPE_16__ {int /*<<< orphan*/  eeprom_size; } ;
struct TYPE_15__ {int /*<<< orphan*/  nvm_version; } ;
struct TYPE_14__ {int length; int /*<<< orphan*/ * data; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  hw_id; TYPE_2__* trans_cfg; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int NVM_MAX_NUM_SECTIONS ; 
#define  NVM_SECTION_TYPE_CALIBRATION 133 
#define  NVM_SECTION_TYPE_PHY_SKU 132 
#define  NVM_SECTION_TYPE_PRODUCTION 131 
#define  NVM_SECTION_TYPE_REGULATORY 130 
#define  NVM_SECTION_TYPE_REGULATORY_SDP 129 
#define  NVM_SECTION_TYPE_SW 128 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct iwl_mvm*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_12__* FUNC5 (struct iwl_mvm*) ; 
 int FUNC6 (TYPE_10__*,char const*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC10(struct iwl_mvm *mvm)
{
	int ret, section;
	u32 size_read = 0;
	u8 *nvm_buffer, *temp;
	const char *nvm_file_C = mvm->cfg->default_nvm_file_C_step;

	if (FUNC2(mvm->cfg->nvm_hw_section_num >= NVM_MAX_NUM_SECTIONS))
		return -EINVAL;

	/* load NVM values from nic */
	/* Read From FW NVM */
	FUNC0(mvm->trans->dev, "Read from NVM\n");

	nvm_buffer = FUNC8(mvm->trans->trans_cfg->base_params->eeprom_size,
			     GFP_KERNEL);
	if (!nvm_buffer)
		return -ENOMEM;
	for (section = 0; section < NVM_MAX_NUM_SECTIONS; section++) {
		/* we override the constness for initial read */
		ret = FUNC4(mvm, section, nvm_buffer,
					   size_read);
		if (ret == -ENODATA) {
			ret = 0;
			continue;
		}
		if (ret < 0)
			break;
		size_read += ret;
		temp = FUNC9(nvm_buffer, ret, GFP_KERNEL);
		if (!temp) {
			ret = -ENOMEM;
			break;
		}

		FUNC3(mvm->trans->hw_id, section, temp, ret);

		mvm->nvm_sections[section].data = temp;
		mvm->nvm_sections[section].length = ret;

#ifdef CONFIG_IWLWIFI_DEBUGFS
		switch (section) {
		case NVM_SECTION_TYPE_SW:
			mvm->nvm_sw_blob.data = temp;
			mvm->nvm_sw_blob.size  = ret;
			break;
		case NVM_SECTION_TYPE_CALIBRATION:
			mvm->nvm_calib_blob.data = temp;
			mvm->nvm_calib_blob.size  = ret;
			break;
		case NVM_SECTION_TYPE_PRODUCTION:
			mvm->nvm_prod_blob.data = temp;
			mvm->nvm_prod_blob.size  = ret;
			break;
		case NVM_SECTION_TYPE_PHY_SKU:
			mvm->nvm_phy_sku_blob.data = temp;
			mvm->nvm_phy_sku_blob.size  = ret;
			break;
		case NVM_SECTION_TYPE_REGULATORY_SDP:
		case NVM_SECTION_TYPE_REGULATORY:
			mvm->nvm_reg_blob.data = temp;
			mvm->nvm_reg_blob.size  = ret;
			break;
		default:
			if (section == mvm->cfg->nvm_hw_section_num) {
				mvm->nvm_hw_blob.data = temp;
				mvm->nvm_hw_blob.size = ret;
				break;
			}
		}
#endif
	}
	if (!size_read)
		FUNC1(mvm, "OTP is blank\n");
	FUNC7(nvm_buffer);

	/* Only if PNVM selected in the mod param - load external NVM  */
	if (mvm->nvm_file_name) {
		/* read External NVM file from the mod param */
		ret = FUNC6(mvm->trans, mvm->nvm_file_name,
					    mvm->nvm_sections);
		if (ret) {
			mvm->nvm_file_name = nvm_file_C;

			if ((ret == -EFAULT || ret == -ENOENT) &&
			    mvm->nvm_file_name) {
				/* in case nvm file was failed try again */
				ret = FUNC6(mvm->trans,
							    mvm->nvm_file_name,
							    mvm->nvm_sections);
				if (ret)
					return ret;
			} else {
				return ret;
			}
		}
	}

	/* parse the relevant nvm sections */
	mvm->nvm_data = FUNC5(mvm);
	if (!mvm->nvm_data)
		return -ENODATA;
	FUNC0(mvm->trans->dev, "nvm version = %x\n",
			 mvm->nvm_data->nvm_version);

	return ret < 0 ? ret : 0;
}