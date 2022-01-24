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

/* Variables and functions */
 int /*<<< orphan*/  CNIC_F_CNIC_UP ; 
 int EAGAIN ; 
 int EIO ; 
#define  ISCSI_KWQE_OPCODE_DESTROY_CONN 138 
#define  ISCSI_KWQE_OPCODE_INIT1 137 
#define  ISCSI_KWQE_OPCODE_INIT2 136 
#define  ISCSI_KWQE_OPCODE_OFFLOAD_CONN1 135 
#define  ISCSI_KWQE_OPCODE_UPDATE_CONN 134 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  L4_KWQE_OPCODE_VALUE_CLOSE 133 
#define  L4_KWQE_OPCODE_VALUE_CONNECT1 132 
#define  L4_KWQE_OPCODE_VALUE_OFFLOAD_PG 131 
#define  L4_KWQE_OPCODE_VALUE_RESET 130 
#define  L4_KWQE_OPCODE_VALUE_UPDATE_PG 129 
#define  L4_KWQE_OPCODE_VALUE_UPLOAD_PG 128 
 int FUNC1 (struct cnic_dev*,struct kwqe*) ; 
 int FUNC2 (struct cnic_dev*,struct kwqe**,int,int*) ; 
 int FUNC3 (struct cnic_dev*,struct kwqe*) ; 
 int FUNC4 (struct cnic_dev*,struct kwqe*) ; 
 int FUNC5 (struct cnic_dev*,struct kwqe*) ; 
 int FUNC6 (struct cnic_dev*,struct kwqe**,int,int*) ; 
 int FUNC7 (struct cnic_dev*,struct kwqe*) ; 
 int /*<<< orphan*/  FUNC8 (struct cnic_dev*,struct kwqe*) ; 
 int FUNC9 (struct cnic_dev*,struct kwqe*) ; 
 int FUNC10 (struct cnic_dev*,struct kwqe*) ; 
 int FUNC11 (struct cnic_dev*,struct kwqe*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct cnic_dev *dev,
					 struct kwqe *wqes[], u32 num_wqes)
{
	int i, work, ret;
	u32 opcode;
	struct kwqe *kwqe;

	if (!FUNC13(CNIC_F_CNIC_UP, &dev->flags))
		return -EAGAIN;		/* bnx2 is down */

	for (i = 0; i < num_wqes; ) {
		kwqe = wqes[i];
		opcode = FUNC0(kwqe->kwqe_op_flag);
		work = 1;

		switch (opcode) {
		case ISCSI_KWQE_OPCODE_INIT1:
			ret = FUNC4(dev, kwqe);
			break;
		case ISCSI_KWQE_OPCODE_INIT2:
			ret = FUNC5(dev, kwqe);
			break;
		case ISCSI_KWQE_OPCODE_OFFLOAD_CONN1:
			ret = FUNC6(dev, &wqes[i],
						     num_wqes - i, &work);
			break;
		case ISCSI_KWQE_OPCODE_UPDATE_CONN:
			ret = FUNC7(dev, kwqe);
			break;
		case ISCSI_KWQE_OPCODE_DESTROY_CONN:
			ret = FUNC3(dev, kwqe);
			break;
		case L4_KWQE_OPCODE_VALUE_CONNECT1:
			ret = FUNC2(dev, &wqes[i], num_wqes - i,
						 &work);
			break;
		case L4_KWQE_OPCODE_VALUE_CLOSE:
			ret = FUNC1(dev, kwqe);
			break;
		case L4_KWQE_OPCODE_VALUE_RESET:
			ret = FUNC10(dev, kwqe);
			break;
		case L4_KWQE_OPCODE_VALUE_OFFLOAD_PG:
			ret = FUNC9(dev, kwqe);
			break;
		case L4_KWQE_OPCODE_VALUE_UPDATE_PG:
			ret = FUNC11(dev, kwqe);
			break;
		case L4_KWQE_OPCODE_VALUE_UPLOAD_PG:
			ret = 0;
			break;
		default:
			ret = 0;
			FUNC12(dev->netdev, "Unknown type of KWQE(0x%x)\n",
				   opcode);
			break;
		}
		if (ret < 0) {
			FUNC12(dev->netdev, "KWQE(0x%x) failed\n",
				   opcode);

			/* Possibly bnx2x parity error, send completion
			 * to ulp drivers with error code to speed up
			 * cleanup and reset recovery.
			 */
			if (ret == -EIO || ret == -EAGAIN)
				FUNC8(dev, kwqe);
		}
		i += work;
	}
	return 0;
}