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
struct kwqe {int /*<<< orphan*/  kwqe_op_flag; } ;
struct cnic_dev {int /*<<< orphan*/  netdev; int /*<<< orphan*/  flags; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  CNIC_F_CNIC_UP ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
#define  FCOE_KWQE_OPCODE_DESTROY 134 
#define  FCOE_KWQE_OPCODE_DESTROY_CONN 133 
#define  FCOE_KWQE_OPCODE_DISABLE_CONN 132 
#define  FCOE_KWQE_OPCODE_ENABLE_CONN 131 
#define  FCOE_KWQE_OPCODE_INIT1 130 
#define  FCOE_KWQE_OPCODE_OFFLOAD_CONN1 129 
#define  FCOE_KWQE_OPCODE_STAT 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cnic_dev*,struct kwqe*) ; 
 int FUNC3 (struct cnic_dev*,struct kwqe*) ; 
 int FUNC4 (struct cnic_dev*,struct kwqe*) ; 
 int FUNC5 (struct cnic_dev*,struct kwqe*) ; 
 int FUNC6 (struct cnic_dev*,struct kwqe**,int,int*) ; 
 int FUNC7 (struct cnic_dev*,struct kwqe**,int,int*) ; 
 int FUNC8 (struct cnic_dev*,struct kwqe*) ; 
 int /*<<< orphan*/  FUNC9 (struct cnic_dev*,struct kwqe*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 struct bnx2x* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct cnic_dev *dev,
					struct kwqe *wqes[], u32 num_wqes)
{
	struct bnx2x *bp = FUNC11(dev->netdev);
	int i, work, ret;
	u32 opcode;
	struct kwqe *kwqe;

	if (!FUNC12(CNIC_F_CNIC_UP, &dev->flags))
		return -EAGAIN;		/* bnx2 is down */

	if (!FUNC0(bp))
		return -EINVAL;

	for (i = 0; i < num_wqes; ) {
		kwqe = wqes[i];
		opcode = FUNC1(kwqe->kwqe_op_flag);
		work = 1;

		switch (opcode) {
		case FCOE_KWQE_OPCODE_INIT1:
			ret = FUNC6(dev, &wqes[i],
						    num_wqes - i, &work);
			break;
		case FCOE_KWQE_OPCODE_OFFLOAD_CONN1:
			ret = FUNC7(dev, &wqes[i],
						    num_wqes - i, &work);
			break;
		case FCOE_KWQE_OPCODE_ENABLE_CONN:
			ret = FUNC4(dev, kwqe);
			break;
		case FCOE_KWQE_OPCODE_DISABLE_CONN:
			ret = FUNC3(dev, kwqe);
			break;
		case FCOE_KWQE_OPCODE_DESTROY_CONN:
			ret = FUNC2(dev, kwqe);
			break;
		case FCOE_KWQE_OPCODE_DESTROY:
			ret = FUNC5(dev, kwqe);
			break;
		case FCOE_KWQE_OPCODE_STAT:
			ret = FUNC8(dev, kwqe);
			break;
		default:
			ret = 0;
			FUNC10(dev->netdev, "Unknown type of KWQE(0x%x)\n",
				   opcode);
			break;
		}
		if (ret < 0) {
			FUNC10(dev->netdev, "KWQE(0x%x) failed\n",
				   opcode);

			/* Possibly bnx2x parity error, send completion
			 * to ulp drivers with error code to speed up
			 * cleanup and reset recovery.
			 */
			if (ret == -EIO || ret == -EAGAIN)
				FUNC9(dev, kwqe);
		}
		i += work;
	}
	return 0;
}