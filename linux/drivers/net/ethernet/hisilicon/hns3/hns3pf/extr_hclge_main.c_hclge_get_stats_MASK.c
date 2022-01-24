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
typedef  int /*<<< orphan*/  u64 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac_stats; } ;
struct hclge_dev {TYPE_1__ hw_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_mac_stats_string ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hclge_vport* FUNC2 (struct hnae3_handle*) ; 
 int /*<<< orphan*/ * FUNC3 (struct hnae3_handle*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hnae3_handle *handle, u64 *data)
{
	struct hclge_vport *vport = FUNC2(handle);
	struct hclge_dev *hdev = vport->back;
	u64 *p;

	p = FUNC1(&hdev->hw_stats.mac_stats, g_mac_stats_string,
				 FUNC0(g_mac_stats_string), data);
	p = FUNC3(handle, p);
}