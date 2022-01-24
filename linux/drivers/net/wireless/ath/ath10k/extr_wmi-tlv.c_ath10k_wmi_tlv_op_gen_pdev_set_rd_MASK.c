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
typedef  int /*<<< orphan*/  u16 ;
struct wmi_tlv_pdev_set_rd_cmd {void* conform_limit_5ghz; void* conform_limit_2ghz; void* regd_5ghz; void* regd_2ghz; void* regd; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef  enum wmi_dfs_region { ____Placeholder_wmi_dfs_region } wmi_dfs_region ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_STRUCT_PDEV_SET_REGDOMAIN_CMD ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC4 (struct ath10k*,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar,
				  u16 rd, u16 rd2g, u16 rd5g,
				  u16 ctl2g, u16 ctl5g,
				  enum wmi_dfs_region dfs_reg)
{
	struct wmi_tlv_pdev_set_rd_cmd *cmd;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;

	skb = FUNC4(ar, sizeof(*tlv) + sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	tlv = (void *)skb->data;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_PDEV_SET_REGDOMAIN_CMD);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;
	cmd->regd = FUNC2(rd);
	cmd->regd_2ghz = FUNC2(rd2g);
	cmd->regd_5ghz = FUNC2(rd5g);
	cmd->conform_limit_2ghz = FUNC2(ctl2g);
	cmd->conform_limit_5ghz = FUNC2(ctl5g);

	FUNC3(ar, ATH10K_DBG_WMI, "wmi tlv pdev set rd\n");
	return skb;
}