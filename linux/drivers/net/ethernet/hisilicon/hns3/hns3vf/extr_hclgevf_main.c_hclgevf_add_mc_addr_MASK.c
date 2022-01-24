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
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HCLGE_MBX_MAC_VLAN_MC_ADD ; 
 int /*<<< orphan*/  HCLGE_MBX_SET_MULTICAST ; 
 struct hclgevf_dev* FUNC0 (struct hnae3_handle*) ; 
 int FUNC1 (struct hclgevf_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hnae3_handle *handle,
			       const unsigned char *addr)
{
	struct hclgevf_dev *hdev = FUNC0(handle);

	return FUNC1(hdev, HCLGE_MBX_SET_MULTICAST,
				    HCLGE_MBX_MAC_VLAN_MC_ADD,
				    addr, ETH_ALEN, false, NULL, 0);
}