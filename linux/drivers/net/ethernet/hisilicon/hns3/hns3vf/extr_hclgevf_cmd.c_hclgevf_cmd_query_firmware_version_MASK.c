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
struct hclgevf_query_version_cmd {int /*<<< orphan*/  firmware; } ;
struct hclgevf_hw {int dummy; } ;
struct hclgevf_desc {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_OPC_QUERY_FW_VER ; 
 int FUNC0 (struct hclgevf_hw*,struct hclgevf_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hclgevf_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int  FUNC3(struct hclgevf_hw *hw,
					       u32 *version)
{
	struct hclgevf_query_version_cmd *resp;
	struct hclgevf_desc desc;
	int status;

	resp = (struct hclgevf_query_version_cmd *)desc.data;

	FUNC1(&desc, HCLGEVF_OPC_QUERY_FW_VER, 1);
	status = FUNC0(hw, &desc, 1);
	if (!status)
		*version = FUNC2(resp->firmware);

	return status;
}