#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_4__ {unsigned long* supported; unsigned long* advertising; } ;
struct TYPE_3__ {TYPE_2__ mac; } ;
struct hclge_dev {TYPE_1__ hw; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __ETHTOOL_LINK_MODE_MASK_NBITS ; 
 struct hclge_vport* FUNC1 (struct hnae3_handle*) ; 

__attribute__((used)) static void FUNC2(struct hnae3_handle *handle,
				unsigned long *supported,
				unsigned long *advertising)
{
	unsigned int size = FUNC0(__ETHTOOL_LINK_MODE_MASK_NBITS);
	struct hclge_vport *vport = FUNC1(handle);
	struct hclge_dev *hdev = vport->back;
	unsigned int idx = 0;

	for (; idx < size; idx++) {
		supported[idx] = hdev->hw.mac.supported[idx];
		advertising[idx] = hdev->hw.mac.advertising[idx];
	}
}