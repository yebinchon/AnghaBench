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
struct hclgevf_rss_cfg {int rss_size; } ;
struct hclgevf_dev {struct hclgevf_rss_cfg rss_cfg; } ;

/* Variables and functions */
 struct hclgevf_dev* FUNC0 (struct hnae3_handle*) ; 

__attribute__((used)) static int FUNC1(struct hnae3_handle *handle)
{
	struct hclgevf_dev *hdev = FUNC0(handle);
	struct hclgevf_rss_cfg *rss_cfg = &hdev->rss_cfg;

	return rss_cfg->rss_size;
}