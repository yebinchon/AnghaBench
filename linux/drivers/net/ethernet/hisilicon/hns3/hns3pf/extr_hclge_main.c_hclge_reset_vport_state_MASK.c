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
struct hclge_vport {int dummy; } ;
struct hclge_dev {int num_alloc_vport; struct hclge_vport* vport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hclge_vport*) ; 

__attribute__((used)) static void FUNC1(struct hclge_dev *hdev)
{
	struct hclge_vport *vport = hdev->vport;
	int i;

	for (i = 0; i < hdev->num_alloc_vport; i++) {
		FUNC0(vport);
		vport++;
	}
}