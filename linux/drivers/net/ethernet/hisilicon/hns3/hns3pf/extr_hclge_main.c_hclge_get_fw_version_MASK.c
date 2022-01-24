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
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int /*<<< orphan*/  fw_version; } ;

/* Variables and functions */
 struct hclge_vport* FUNC0 (struct hnae3_handle*) ; 

__attribute__((used)) static u32 FUNC1(struct hnae3_handle *handle)
{
	struct hclge_vport *vport = FUNC0(handle);
	struct hclge_dev *hdev = vport->back;

	return hdev->fw_version;
}