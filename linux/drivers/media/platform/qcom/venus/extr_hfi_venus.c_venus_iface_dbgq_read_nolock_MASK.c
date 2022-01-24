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
typedef  scalar_t__ u32 ;
struct venus_hfi_device {struct iface_queue* queues; } ;
struct iface_queue {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t IFACEQ_DBG_IDX ; 
 int FUNC0 (struct venus_hfi_device*) ; 
 int FUNC1 (struct venus_hfi_device*,struct iface_queue*,void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct venus_hfi_device*) ; 

__attribute__((used)) static int FUNC3(struct venus_hfi_device *hdev,
					void *pkt)
{
	struct iface_queue *queue;
	u32 tx_req;
	int ret;

	ret = FUNC0(hdev);
	if (!ret)
		return -EINVAL;

	queue = &hdev->queues[IFACEQ_DBG_IDX];

	ret = FUNC1(hdev, queue, pkt, &tx_req);
	if (ret)
		return ret;

	if (tx_req)
		FUNC2(hdev);

	return 0;
}