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
struct hclge_dev {int dummy; } ;

/* Variables and functions */
 int HCLGE_LINK_STATUS_DOWN ; 
 int HCLGE_LINK_STATUS_UP ; 
 int FUNC0 (struct hclge_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_dev*,int) ; 

__attribute__((used)) static int FUNC2(struct hclge_dev *hdev, bool en,
					  bool is_phy)
{
#define HCLGE_LINK_STATUS_DOWN 0
#define HCLGE_LINK_STATUS_UP   1

	int link_ret;

	link_ret = en ? HCLGE_LINK_STATUS_UP : HCLGE_LINK_STATUS_DOWN;

	if (is_phy)
		FUNC1(hdev, link_ret);

	return FUNC0(hdev, link_ret);
}