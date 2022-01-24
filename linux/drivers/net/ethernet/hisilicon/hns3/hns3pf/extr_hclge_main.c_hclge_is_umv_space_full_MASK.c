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
struct hclge_vport {scalar_t__ used_umv_num; struct hclge_dev* back; } ;
struct hclge_dev {scalar_t__ priv_umv_size; scalar_t__ share_umv_size; int /*<<< orphan*/  umv_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct hclge_vport *vport)
{
	struct hclge_dev *hdev = vport->back;
	bool is_full;

	FUNC0(&hdev->umv_mutex);
	is_full = (vport->used_umv_num >= hdev->priv_umv_size &&
		   hdev->share_umv_size == 0);
	FUNC1(&hdev->umv_mutex);

	return is_full;
}