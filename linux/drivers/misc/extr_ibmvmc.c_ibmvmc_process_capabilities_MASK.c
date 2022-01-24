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
struct ibmvmc_crq_msg {int dummy; } ;
struct ibmvmc_admin_crq_msg {int max_hmc; int /*<<< orphan*/  pool_size; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  version; } ;
struct crq_server_adapter {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {void* max_hmc_index; void* max_buffer_pool_size; void* max_mtu; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int IBMVMC_PROTOCOL_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*,void*,void*) ; 
 TYPE_1__ ibmvmc ; 
 int /*<<< orphan*/  ibmvmc_max_buf_pool_size ; 
 int /*<<< orphan*/  ibmvmc_max_hmcs ; 
 int /*<<< orphan*/  ibmvmc_max_mtu ; 
 int /*<<< orphan*/  ibmvmc_state_failed ; 
 int /*<<< orphan*/  ibmvmc_state_ready ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  u16 ; 
 int /*<<< orphan*/  u32 ; 
 int /*<<< orphan*/  u8 ; 

__attribute__((used)) static void FUNC5(struct crq_server_adapter *adapter,
					struct ibmvmc_crq_msg *crqp)
{
	struct ibmvmc_admin_crq_msg *crq = (struct ibmvmc_admin_crq_msg *)crqp;

	if ((FUNC0(crq->version) >> 8) !=
			(IBMVMC_PROTOCOL_VERSION >> 8)) {
		FUNC2(adapter->dev, "init failed, incompatible versions 0x%x 0x%x\n",
			FUNC0(crq->version),
			IBMVMC_PROTOCOL_VERSION);
		ibmvmc.state = ibmvmc_state_failed;
		return;
	}

	ibmvmc.max_mtu = FUNC4(u32, ibmvmc_max_mtu, FUNC1(crq->max_mtu));
	ibmvmc.max_buffer_pool_size = FUNC4(u16, ibmvmc_max_buf_pool_size,
					    FUNC0(crq->pool_size));
	ibmvmc.max_hmc_index = FUNC4(u8, ibmvmc_max_hmcs, crq->max_hmc) - 1;
	ibmvmc.state = ibmvmc_state_ready;

	FUNC3(adapter->dev, "Capabilities: mtu=0x%x, pool_size=0x%x, max_hmc=0x%x\n",
		 ibmvmc.max_mtu, ibmvmc.max_buffer_pool_size,
		 ibmvmc.max_hmc_index);
}