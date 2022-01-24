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
struct hclgevf_dev {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_RST_ING ; 
 struct hclgevf_dev* FUNC0 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct hnae3_handle *handle)
{
	struct hclgevf_dev *hdev = FUNC0(handle);

	return !!FUNC1(&hdev->hw, HCLGEVF_RST_ING);
}