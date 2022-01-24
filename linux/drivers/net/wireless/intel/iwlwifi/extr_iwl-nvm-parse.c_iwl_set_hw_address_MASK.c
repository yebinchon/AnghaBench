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
typedef  int /*<<< orphan*/  u8 ;
struct iwl_trans {int dummy; } ;
struct iwl_nvm_data {int /*<<< orphan*/ * hw_addr; } ;
struct iwl_cfg {scalar_t__ nvm_type; scalar_t__ mac_addr_from_csr; } ;
typedef  int /*<<< orphan*/  __le16 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int HW_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ IWL_NVM_EXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,struct iwl_cfg const*,struct iwl_nvm_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,struct iwl_nvm_data*) ; 

__attribute__((used)) static int FUNC5(struct iwl_trans *trans,
			      const struct iwl_cfg *cfg,
			      struct iwl_nvm_data *data, const __be16 *nvm_hw,
			      const __le16 *mac_override)
{
	if (cfg->mac_addr_from_csr) {
		FUNC4(trans, data);
	} else if (cfg->nvm_type != IWL_NVM_EXT) {
		const u8 *hw_addr = (const u8 *)(nvm_hw + HW_ADDR);

		/* The byte order is little endian 16 bit, meaning 214365 */
		data->hw_addr[0] = hw_addr[1];
		data->hw_addr[1] = hw_addr[0];
		data->hw_addr[2] = hw_addr[3];
		data->hw_addr[3] = hw_addr[2];
		data->hw_addr[4] = hw_addr[5];
		data->hw_addr[5] = hw_addr[4];
	} else {
		FUNC3(trans, cfg, data,
					       mac_override, nvm_hw);
	}

	if (!FUNC2(data->hw_addr)) {
		FUNC0(trans, "no valid mac address was found\n");
		return -EINVAL;
	}

	FUNC1(trans, "base HW address: %pM\n", data->hw_addr);

	return 0;
}