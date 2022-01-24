#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct iwl_priv {TYPE_2__* lib; TYPE_3__* trans; TYPE_1__* nvm_data; } ;
struct iwl_op_mode {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  hw_rev; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* nic_config ) (struct iwl_priv*) ;} ;
struct TYPE_6__ {int radio_cfg_type; int radio_cfg_step; int radio_cfg_dash; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS ; 
 int /*<<< orphan*/  APMG_PS_CTRL_REG ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
 int CSR_HW_IF_CONFIG_REG_BIT_MAC_SI ; 
 int CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI ; 
 int CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH ; 
 int CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP ; 
 int CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH ; 
 int CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP ; 
 int CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE ; 
 int CSR_HW_IF_CONFIG_REG_POS_MAC_DASH ; 
 int CSR_HW_IF_CONFIG_REG_POS_MAC_STEP ; 
 int CSR_HW_IF_CONFIG_REG_POS_PHY_DASH ; 
 int CSR_HW_IF_CONFIG_REG_POS_PHY_STEP ; 
 int CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EEPROM_RF_CONFIG_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*,int,int,int) ; 
 struct iwl_priv* FUNC3 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_priv*) ; 

__attribute__((used)) static void FUNC9(struct iwl_op_mode *op_mode)
{
	struct iwl_priv *priv = FUNC3(op_mode);

	/* SKU Control */
	FUNC7(priv->trans, CSR_HW_IF_CONFIG_REG,
				CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH |
				CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP,
				(FUNC1(priv->trans->hw_rev) <<
					CSR_HW_IF_CONFIG_REG_POS_MAC_STEP) |
				(FUNC0(priv->trans->hw_rev) <<
					CSR_HW_IF_CONFIG_REG_POS_MAC_DASH));

	/* write radio config values to register */
	if (priv->nvm_data->radio_cfg_type <= EEPROM_RF_CONFIG_TYPE_MAX) {
		u32 reg_val =
			priv->nvm_data->radio_cfg_type <<
				CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE |
			priv->nvm_data->radio_cfg_step <<
				CSR_HW_IF_CONFIG_REG_POS_PHY_STEP |
			priv->nvm_data->radio_cfg_dash <<
				CSR_HW_IF_CONFIG_REG_POS_PHY_DASH;

		FUNC7(priv->trans, CSR_HW_IF_CONFIG_REG,
					CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE |
					CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP |
					CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH,
					reg_val);

		FUNC2(priv, "Radio type=0x%x-0x%x-0x%x\n",
			 priv->nvm_data->radio_cfg_type,
			 priv->nvm_data->radio_cfg_step,
			 priv->nvm_data->radio_cfg_dash);
	} else {
		FUNC4(1);
	}

	/* set CSR_HW_CONFIG_REG for uCode use */
	FUNC5(priv->trans, CSR_HW_IF_CONFIG_REG,
		    CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI |
		    CSR_HW_IF_CONFIG_REG_BIT_MAC_SI);

	/* W/A : NIC is stuck in a reset state after Early PCIe power off
	 * (PCIe power is lost before PERST# is asserted),
	 * causing ME FW to lose ownership and not being able to obtain it back.
	 */
	FUNC6(priv->trans, APMG_PS_CTRL_REG,
			       APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS,
			       ~APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS);

	if (priv->lib->nic_config)
		priv->lib->nic_config(priv);
}