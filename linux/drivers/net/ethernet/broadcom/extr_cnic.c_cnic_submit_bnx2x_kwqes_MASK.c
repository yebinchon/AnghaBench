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
typedef  int u32 ;
struct kwqe {int kwqe_op_flag; } ;
struct cnic_dev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNIC_F_CNIC_UP ; 
 int EAGAIN ; 
 int EINVAL ; 
#define  KWQE_FLAGS_LAYER_MASK_L2 131 
#define  KWQE_FLAGS_LAYER_MASK_L4 130 
#define  KWQE_FLAGS_LAYER_MASK_L5_FCOE 129 
#define  KWQE_FLAGS_LAYER_MASK_L5_ISCSI 128 
 int KWQE_LAYER_MASK ; 
 int FUNC0 (struct cnic_dev*,struct kwqe**,int) ; 
 int FUNC1 (struct cnic_dev*,struct kwqe**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct cnic_dev *dev, struct kwqe *wqes[],
				   u32 num_wqes)
{
	int ret = -EINVAL;
	u32 layer_code;

	if (!FUNC2(CNIC_F_CNIC_UP, &dev->flags))
		return -EAGAIN;		/* bnx2x is down */

	if (!num_wqes)
		return 0;

	layer_code = wqes[0]->kwqe_op_flag & KWQE_LAYER_MASK;
	switch (layer_code) {
	case KWQE_FLAGS_LAYER_MASK_L5_ISCSI:
	case KWQE_FLAGS_LAYER_MASK_L4:
	case KWQE_FLAGS_LAYER_MASK_L2:
		ret = FUNC1(dev, wqes, num_wqes);
		break;

	case KWQE_FLAGS_LAYER_MASK_L5_FCOE:
		ret = FUNC0(dev, wqes, num_wqes);
		break;
	}
	return ret;
}