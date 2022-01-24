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
struct ath10k_qmi_wlan_enable_cfg {int dummy; } ;
struct ath10k {int dummy; } ;
typedef  enum wlfw_driver_mode_enum_v01 { ____Placeholder_wlfw_driver_mode_enum_v01 } wlfw_driver_mode_enum_v01 ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_QMI ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int,struct ath10k_qmi_wlan_enable_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int FUNC2 (struct ath10k*,struct ath10k_qmi_wlan_enable_cfg*,char const*) ; 
 int FUNC3 (struct ath10k*,int) ; 

int FUNC4(struct ath10k *ar,
			   struct ath10k_qmi_wlan_enable_cfg *config,
			   enum wlfw_driver_mode_enum_v01 mode,
			   const char *version)
{
	int ret;

	FUNC0(ar, ATH10K_DBG_QMI, "qmi mode %d config %p\n",
		   mode, config);

	ret = FUNC2(ar, config, version);
	if (ret) {
		FUNC1(ar, "failed to send qmi config: %d\n", ret);
		return ret;
	}

	ret = FUNC3(ar, mode);
	if (ret) {
		FUNC1(ar, "failed to send qmi mode: %d\n", ret);
		return ret;
	}

	return 0;
}