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
typedef  scalar_t__ u16 ;
struct hclge_dev {scalar_t__ wanted_umv_size; int max_umv_size; int priv_umv_size; int num_req_vfs; int share_umv_size; int /*<<< orphan*/  umv_mutex; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct hclge_dev*,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hclge_dev *hdev)
{
	u16 allocated_size = 0;
	int ret;

	ret = FUNC1(hdev, hdev->wanted_umv_size, &allocated_size,
				  true);
	if (ret)
		return ret;

	if (allocated_size < hdev->wanted_umv_size)
		FUNC0(&hdev->pdev->dev,
			 "Alloc umv space failed, want %d, get %d\n",
			 hdev->wanted_umv_size, allocated_size);

	FUNC2(&hdev->umv_mutex);
	hdev->max_umv_size = allocated_size;
	/* divide max_umv_size by (hdev->num_req_vfs + 2), in order to
	 * preserve some unicast mac vlan table entries shared by pf
	 * and its vfs.
	 */
	hdev->priv_umv_size = hdev->max_umv_size / (hdev->num_req_vfs + 2);
	hdev->share_umv_size = hdev->priv_umv_size +
			hdev->max_umv_size % (hdev->num_req_vfs + 2);

	return 0;
}