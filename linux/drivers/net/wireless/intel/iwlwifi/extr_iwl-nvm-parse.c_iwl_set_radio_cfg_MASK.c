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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_nvm_data {int /*<<< orphan*/  valid_rx_ant; int /*<<< orphan*/  valid_tx_ant; int /*<<< orphan*/  radio_cfg_pnum; int /*<<< orphan*/  radio_cfg_dash; int /*<<< orphan*/  radio_cfg_step; int /*<<< orphan*/  radio_cfg_type; } ;
struct iwl_cfg {scalar_t__ nvm_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_NVM_EXT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(const struct iwl_cfg *cfg,
			      struct iwl_nvm_data *data,
			      u32 radio_cfg)
{
	if (cfg->nvm_type != IWL_NVM_EXT) {
		data->radio_cfg_type = FUNC9(radio_cfg);
		data->radio_cfg_step = FUNC8(radio_cfg);
		data->radio_cfg_dash = FUNC6(radio_cfg);
		data->radio_cfg_pnum = FUNC7(radio_cfg);
		return;
	}

	/* set the radio configuration for family 8000 */
	data->radio_cfg_type = FUNC5(radio_cfg);
	data->radio_cfg_step = FUNC3(radio_cfg);
	data->radio_cfg_dash = FUNC0(radio_cfg);
	data->radio_cfg_pnum = FUNC1(radio_cfg);
	data->valid_tx_ant = FUNC4(radio_cfg);
	data->valid_rx_ant = FUNC2(radio_cfg);
}