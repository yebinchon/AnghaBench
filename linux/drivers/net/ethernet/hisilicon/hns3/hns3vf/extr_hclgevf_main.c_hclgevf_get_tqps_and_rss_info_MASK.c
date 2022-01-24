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
struct hnae3_handle {int dummy; } ;
struct hclgevf_dev {int /*<<< orphan*/  rss_size_max; int /*<<< orphan*/  num_tqps; } ;

/* Variables and functions */
 struct hclgevf_dev* FUNC0 (struct hnae3_handle*) ; 

__attribute__((used)) static void FUNC1(struct hnae3_handle *handle,
					  u16 *alloc_tqps, u16 *max_rss_size)
{
	struct hclgevf_dev *hdev = FUNC0(handle);

	*alloc_tqps = hdev->num_tqps;
	*max_rss_size = hdev->rss_size_max;
}