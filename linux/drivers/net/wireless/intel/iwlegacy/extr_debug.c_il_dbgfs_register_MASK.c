#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct il_priv {int /*<<< orphan*/  disable_tx_power_cal; int /*<<< orphan*/  disable_chain_noise_cal; TYPE_3__* cfg; int /*<<< orphan*/  disable_sens_cal; struct dentry* debugfs_dir; TYPE_2__* hw; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {scalar_t__ chain_noise_calib_by_driver; scalar_t__ sensitivity_calib_by_driver; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {struct dentry* debugfsdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dentry*,int) ; 
 int /*<<< orphan*/  chain_noise ; 
 int /*<<< orphan*/  channels ; 
 int /*<<< orphan*/  clear_traffic_stats ; 
 int /*<<< orphan*/  clear_ucode_stats ; 
 struct dentry* FUNC2 (char const*,struct dentry*) ; 
 int /*<<< orphan*/  disable_chain_noise ; 
 int /*<<< orphan*/  disable_ht40 ; 
 int /*<<< orphan*/  disable_sensitivity ; 
 int /*<<< orphan*/  disable_tx_power ; 
 int /*<<< orphan*/  fh_reg ; 
 int /*<<< orphan*/  force_reset ; 
 int /*<<< orphan*/  interrupt ; 
 int /*<<< orphan*/  missed_beacon ; 
 int /*<<< orphan*/  nvm ; 
 int /*<<< orphan*/  power_save_status ; 
 int /*<<< orphan*/  qos ; 
 int /*<<< orphan*/  rx_queue ; 
 int /*<<< orphan*/  rx_stats ; 
 int /*<<< orphan*/  rxon_filter_flags ; 
 int /*<<< orphan*/  rxon_flags ; 
 int /*<<< orphan*/  sensitivity ; 
 int /*<<< orphan*/  sram ; 
 int /*<<< orphan*/  stations ; 
 int /*<<< orphan*/  status ; 
 int /*<<< orphan*/  tx_queue ; 
 int /*<<< orphan*/  tx_stats ; 
 int /*<<< orphan*/  ucode_general_stats ; 
 int /*<<< orphan*/  ucode_rx_stats ; 
 int /*<<< orphan*/  ucode_tx_stats ; 
 int /*<<< orphan*/  wd_timeout ; 

void
FUNC3(struct il_priv *il, const char *name)
{
	struct dentry *phyd = il->hw->wiphy->debugfsdir;
	struct dentry *dir_drv, *dir_data, *dir_rf, *dir_debug;

	dir_drv = FUNC2(name, phyd);
	il->debugfs_dir = dir_drv;

	dir_data = FUNC2("data", dir_drv);
	dir_rf = FUNC2("rf", dir_drv);
	dir_debug = FUNC2("debug", dir_drv);

	FUNC1(nvm, dir_data, 0400);
	FUNC1(sram, dir_data, 0600);
	FUNC1(stations, dir_data, 0400);
	FUNC1(channels, dir_data, 0400);
	FUNC1(status, dir_data, 0400);
	FUNC1(interrupt, dir_data, 0600);
	FUNC1(qos, dir_data, 0400);
	FUNC1(disable_ht40, dir_data, 0600);
	FUNC1(rx_stats, dir_debug, 0400);
	FUNC1(tx_stats, dir_debug, 0400);
	FUNC1(rx_queue, dir_debug, 0400);
	FUNC1(tx_queue, dir_debug, 0400);
	FUNC1(power_save_status, dir_debug, 0400);
	FUNC1(clear_ucode_stats, dir_debug, 0200);
	FUNC1(clear_traffic_stats, dir_debug, 0200);
	FUNC1(fh_reg, dir_debug, 0400);
	FUNC1(missed_beacon, dir_debug, 0200);
	FUNC1(force_reset, dir_debug, 0600);
	FUNC1(ucode_rx_stats, dir_debug, 0400);
	FUNC1(ucode_tx_stats, dir_debug, 0400);
	FUNC1(ucode_general_stats, dir_debug, 0400);

	if (il->cfg->sensitivity_calib_by_driver)
		FUNC1(sensitivity, dir_debug, 0400);
	if (il->cfg->chain_noise_calib_by_driver)
		FUNC1(chain_noise, dir_debug, 0400);
	FUNC1(rxon_flags, dir_debug, 0200);
	FUNC1(rxon_filter_flags, dir_debug, 0200);
	FUNC1(wd_timeout, dir_debug, 0200);
	if (il->cfg->sensitivity_calib_by_driver)
		FUNC0(disable_sensitivity, dir_rf,
				 &il->disable_sens_cal);
	if (il->cfg->chain_noise_calib_by_driver)
		FUNC0(disable_chain_noise, dir_rf,
				 &il->disable_chain_noise_cal);
	FUNC0(disable_tx_power, dir_rf, &il->disable_tx_power_cal);
}