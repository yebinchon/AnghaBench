#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct wmi_ext_resource_config_10_4_cmd {void* max_tdls_concurrent_buffer_sta; void* max_tdls_concurrent_sleep_sta; void* num_tdls_conn_table_entries; void* num_tdls_vdevs; void* coex_gpio_pin3; void* coex_gpio_pin2; void* coex_gpio_pin1; void* coex_version; void* wlan_gpio_priority; void* fw_feature_bitmap; void* host_platform_config; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;
typedef  enum wmi_host_platform_type { ____Placeholder_wmi_host_platform_type } wmi_host_platform_type ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int TARGET_10_4_NUM_TDLS_BUFFER_STA ; 
 int TARGET_10_4_NUM_TDLS_SLEEP_STA ; 
 int TARGET_10_4_NUM_TDLS_VDEVS ; 
 int WMI_NO_COEX_VERSION_SUPPORT ; 
 int /*<<< orphan*/  WMI_SERVICE_TDLS_UAPSD_SLEEP_STA ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar,
				    enum wmi_host_platform_type type,
				    u32 fw_feature_bitmap)
{
	struct wmi_ext_resource_config_10_4_cmd *cmd;
	struct sk_buff *skb;
	u32 num_tdls_sleep_sta = 0;

	skb = FUNC3(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	if (FUNC4(WMI_SERVICE_TDLS_UAPSD_SLEEP_STA, ar->wmi.svc_map))
		num_tdls_sleep_sta = TARGET_10_4_NUM_TDLS_SLEEP_STA;

	cmd = (struct wmi_ext_resource_config_10_4_cmd *)skb->data;
	cmd->host_platform_config = FUNC1(type);
	cmd->fw_feature_bitmap = FUNC1(fw_feature_bitmap);
	cmd->wlan_gpio_priority = FUNC1(-1);
	cmd->coex_version = FUNC1(WMI_NO_COEX_VERSION_SUPPORT);
	cmd->coex_gpio_pin1 = FUNC1(-1);
	cmd->coex_gpio_pin2 = FUNC1(-1);
	cmd->coex_gpio_pin3 = FUNC1(-1);
	cmd->num_tdls_vdevs = FUNC1(TARGET_10_4_NUM_TDLS_VDEVS);
	cmd->num_tdls_conn_table_entries = FUNC1(20);
	cmd->max_tdls_concurrent_sleep_sta = FUNC1(num_tdls_sleep_sta);
	cmd->max_tdls_concurrent_buffer_sta =
			FUNC1(TARGET_10_4_NUM_TDLS_BUFFER_STA);

	FUNC2(ar, ATH10K_DBG_WMI,
		   "wmi ext resource config host type %d firmware feature bitmap %08x\n",
		   type, fw_feature_bitmap);
	return skb;
}