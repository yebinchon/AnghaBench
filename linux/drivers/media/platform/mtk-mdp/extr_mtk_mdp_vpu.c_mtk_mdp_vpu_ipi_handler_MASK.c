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
struct mtk_mdp_vpu {int /*<<< orphan*/  failure; } ;
struct mtk_mdp_ctx {int /*<<< orphan*/  id; TYPE_2__* mdp_dev; } ;
struct mdp_ipi_comm_ack {int /*<<< orphan*/  status; scalar_t__ ap_inst; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  VPU_MDP_DEINIT_ACK 130 
#define  VPU_MDP_INIT_ACK 129 
#define  VPU_MDP_PROCESS_ACK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 struct mtk_mdp_ctx* FUNC3 (struct mtk_mdp_vpu*) ; 

__attribute__((used)) static void FUNC4(void *data, unsigned int len, void *priv)
{
	unsigned int msg_id = *(unsigned int *)data;
	struct mdp_ipi_comm_ack *msg = (struct mdp_ipi_comm_ack *)data;
	struct mtk_mdp_vpu *vpu = (struct mtk_mdp_vpu *)
					(unsigned long)msg->ap_inst;
	struct mtk_mdp_ctx *ctx;

	vpu->failure = msg->status;
	if (!vpu->failure) {
		switch (msg_id) {
		case VPU_MDP_INIT_ACK:
			FUNC2(data);
			break;
		case VPU_MDP_DEINIT_ACK:
		case VPU_MDP_PROCESS_ACK:
			break;
		default:
			ctx = FUNC3(vpu);
			FUNC0(&ctx->mdp_dev->pdev->dev,
				"handle unknown ipi msg:0x%x\n",
				msg_id);
			break;
		}
	} else {
		ctx = FUNC3(vpu);
		FUNC1(0, "[%d]:msg 0x%x, failure:%d", ctx->id,
			    msg_id, vpu->failure);
	}
}