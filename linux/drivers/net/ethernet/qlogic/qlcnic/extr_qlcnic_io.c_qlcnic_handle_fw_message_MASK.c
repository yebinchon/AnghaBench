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
typedef  int u32 ;
struct status_desc {int /*<<< orphan*/ * status_desc_data; } ;
struct qlcnic_host_sds_ring {struct qlcnic_adapter* adapter; int /*<<< orphan*/  num_desc; struct status_desc* desc_head; } ;
struct qlcnic_fw_msg {int /*<<< orphan*/ * body; void** words; } ;
struct qlcnic_adapter {int /*<<< orphan*/  dcb; TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  diag_cnt; int /*<<< orphan*/  loopback_state; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENODEV ; 
#define  QLCNIC_C2H_OPCODE_CONFIG_LOOPBACK 130 
#define  QLCNIC_C2H_OPCODE_GET_DCB_AEN 129 
#define  QLCNIC_C2H_OPCODE_GET_LINKEVENT_RESPONSE 128 
 int /*<<< orphan*/  QLCNIC_LB_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,struct qlcnic_fw_msg*) ; 

__attribute__((used)) static void FUNC6(int desc_cnt, int index,
				     struct qlcnic_host_sds_ring *sds_ring)
{
	struct qlcnic_fw_msg msg;
	struct status_desc *desc;
	struct qlcnic_adapter *adapter;
	struct device *dev;
	int i = 0, opcode, ret;

	while (desc_cnt > 0 && i < 8) {
		desc = &sds_ring->desc_head[index];
		msg.words[i++] = FUNC2(desc->status_desc_data[0]);
		msg.words[i++] = FUNC2(desc->status_desc_data[1]);

		index = FUNC1(index, sds_ring->num_desc);
		desc_cnt--;
	}

	adapter = sds_ring->adapter;
	dev = &adapter->pdev->dev;
	opcode = FUNC4(msg.body[0]);

	switch (opcode) {
	case QLCNIC_C2H_OPCODE_GET_LINKEVENT_RESPONSE:
		FUNC5(adapter, &msg);
		break;
	case QLCNIC_C2H_OPCODE_CONFIG_LOOPBACK:
		ret = (u32)(msg.body[1]);
		switch (ret) {
		case 0:
			adapter->ahw->loopback_state |= QLCNIC_LB_RESPONSE;
			break;
		case 1:
			FUNC0(dev, "loopback already in progress\n");
			adapter->ahw->diag_cnt = -EINPROGRESS;
			break;
		case 2:
			FUNC0(dev, "loopback cable is not connected\n");
			adapter->ahw->diag_cnt = -ENODEV;
			break;
		default:
			FUNC0(dev,
				 "loopback configure request failed, err %x\n",
				 ret);
			adapter->ahw->diag_cnt = -EIO;
			break;
		}
		break;
	case QLCNIC_C2H_OPCODE_GET_DCB_AEN:
		FUNC3(adapter->dcb, (void *)&msg);
		break;
	default:
		break;
	}
}