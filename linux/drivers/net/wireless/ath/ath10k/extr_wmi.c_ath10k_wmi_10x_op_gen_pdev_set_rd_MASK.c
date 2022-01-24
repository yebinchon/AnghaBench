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
typedef  int u16 ;
struct wmi_pdev_set_regdomain_cmd_10x {void* dfs_domain; void* conformance_test_limit_5G; void* conformance_test_limit_2G; void* reg_domain_5G; void* reg_domain_2G; void* reg_domain; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef  enum wmi_dfs_region { ____Placeholder_wmi_dfs_region } wmi_dfs_region ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int,int,int,int,int) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC4(struct ath10k *ar, u16 rd, u16 rd2g, u16
				  rd5g, u16 ctl2g, u16 ctl5g,
				  enum wmi_dfs_region dfs_reg)
{
	struct wmi_pdev_set_regdomain_cmd_10x *cmd;
	struct sk_buff *skb;

	skb = FUNC3(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	cmd = (struct wmi_pdev_set_regdomain_cmd_10x *)skb->data;
	cmd->reg_domain = FUNC1(rd);
	cmd->reg_domain_2G = FUNC1(rd2g);
	cmd->reg_domain_5G = FUNC1(rd5g);
	cmd->conformance_test_limit_2G = FUNC1(ctl2g);
	cmd->conformance_test_limit_5G = FUNC1(ctl5g);
	cmd->dfs_domain = FUNC1(dfs_reg);

	FUNC2(ar, ATH10K_DBG_WMI,
		   "wmi pdev regdomain rd %x rd2g %x rd5g %x ctl2g %x ctl5g %x dfs_region %x\n",
		   rd, rd2g, rd5g, ctl2g, ctl5g, dfs_reg);
	return skb;
}