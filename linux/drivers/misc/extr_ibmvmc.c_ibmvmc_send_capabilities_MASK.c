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
struct ibmvmc_admin_crq_msg {int valid; void* version; void* crq_size; void* pool_size; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  max_hmc; scalar_t__* rsvd; scalar_t__ status; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
struct crq_server_adapter {TYPE_1__ queue; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVMC_PROTOCOL_VERSION ; 
 int /*<<< orphan*/  VMC_MSG_CAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ ibmvmc ; 
 int /*<<< orphan*/  ibmvmc_max_buf_pool_size ; 
 int /*<<< orphan*/  ibmvmc_max_hmcs ; 
 int /*<<< orphan*/  ibmvmc_max_mtu ; 
 int /*<<< orphan*/  FUNC4 (struct crq_server_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvmc_state_capabilities ; 

__attribute__((used)) static int FUNC5(struct crq_server_adapter *adapter)
{
	struct ibmvmc_admin_crq_msg crq_msg;
	__be64 *crq_as_u64 = (__be64 *)&crq_msg;

	FUNC3(adapter->dev, "ibmvmc: CRQ send: capabilities\n");
	crq_msg.valid = 0x80;
	crq_msg.type = VMC_MSG_CAP;
	crq_msg.status = 0;
	crq_msg.rsvd[0] = 0;
	crq_msg.rsvd[1] = 0;
	crq_msg.max_hmc = ibmvmc_max_hmcs;
	crq_msg.max_mtu = FUNC2(ibmvmc_max_mtu);
	crq_msg.pool_size = FUNC1(ibmvmc_max_buf_pool_size);
	crq_msg.crq_size = FUNC1(adapter->queue.size);
	crq_msg.version = FUNC1(IBMVMC_PROTOCOL_VERSION);

	FUNC4(adapter, FUNC0(crq_as_u64[0]),
			FUNC0(crq_as_u64[1]));

	ibmvmc.state = ibmvmc_state_capabilities;

	return 0;
}