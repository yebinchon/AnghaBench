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
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hclge_dev*,int) ; 
 struct hclge_vport* FUNC1 (struct hnae3_handle*) ; 

__attribute__((used)) static int FUNC2(struct hnae3_handle *handle, bool enable)
{
	struct hclge_vport *vport = FUNC1(handle);
	struct hclge_dev *hdev = vport->back;

	return FUNC0(hdev, enable);
}