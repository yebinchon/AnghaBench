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
struct qed_rdma_start_in_params {int dummy; } ;
struct qed_iwarp_info {int rcv_wnd_scale; int rcv_wnd_size; int rtr_type; int /*<<< orphan*/  listen_list; int /*<<< orphan*/  ep_list; int /*<<< orphan*/  qp_lock; int /*<<< orphan*/  peer2peer; int /*<<< orphan*/  mpa_rev; int /*<<< orphan*/  crc_needed; int /*<<< orphan*/  tcp_flags; } ;
struct qed_hwfn {TYPE_1__* p_rdma_info; struct qed_dev* cdev; } ;
struct qed_dev {int dummy; } ;
typedef  enum chip_ids { ____Placeholder_chip_ids } chip_ids ;
struct TYPE_4__ {int four_ports; int two_ports; } ;
struct TYPE_3__ {struct qed_iwarp_info iwarp; } ;

/* Variables and functions */
 int CHIP_BB ; 
 int CHIP_K2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MPA_NEGOTIATION_TYPE_ENHANCED ; 
 int MPA_RTR_TYPE_ZERO_READ ; 
 int MPA_RTR_TYPE_ZERO_SEND ; 
 int MPA_RTR_TYPE_ZERO_WRITE ; 
 int /*<<< orphan*/  PROTOCOLID_IWARP ; 
 scalar_t__ FUNC1 (struct qed_dev*) ; 
 int /*<<< orphan*/  QED_IWARP_PARAM_CRC_NEEDED ; 
 int /*<<< orphan*/  QED_IWARP_PARAM_P2P ; 
 int QED_IWARP_RCV_WND_SIZE_MIN ; 
 int /*<<< orphan*/  QED_IWARP_TS_EN ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct qed_dev*) ; 
 int /*<<< orphan*/  qed_iwarp_async_event ; 
 int FUNC4 (struct qed_hwfn*,struct qed_rdma_start_in_params*,int) ; 
 TYPE_2__* qed_iwarp_rcv_wnd_size ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct qed_hwfn *p_hwfn,
		    struct qed_rdma_start_in_params *params)
{
	struct qed_dev *cdev = p_hwfn->cdev;
	struct qed_iwarp_info *iwarp_info;
	enum chip_ids chip_id;
	u32 rcv_wnd_size;

	iwarp_info = &p_hwfn->p_rdma_info->iwarp;

	iwarp_info->tcp_flags = QED_IWARP_TS_EN;

	chip_id = FUNC1(cdev) ? CHIP_BB : CHIP_K2;
	rcv_wnd_size = (FUNC3(cdev) == 4) ?
		qed_iwarp_rcv_wnd_size[chip_id].four_ports :
		qed_iwarp_rcv_wnd_size[chip_id].two_ports;

	/* value 0 is used for ilog2(QED_IWARP_RCV_WND_SIZE_MIN) */
	iwarp_info->rcv_wnd_scale = FUNC2(rcv_wnd_size) -
	    FUNC2(QED_IWARP_RCV_WND_SIZE_MIN);
	iwarp_info->rcv_wnd_size = rcv_wnd_size >> iwarp_info->rcv_wnd_scale;
	iwarp_info->crc_needed = QED_IWARP_PARAM_CRC_NEEDED;
	iwarp_info->mpa_rev = MPA_NEGOTIATION_TYPE_ENHANCED;

	iwarp_info->peer2peer = QED_IWARP_PARAM_P2P;

	iwarp_info->rtr_type =  MPA_RTR_TYPE_ZERO_SEND |
				MPA_RTR_TYPE_ZERO_WRITE |
				MPA_RTR_TYPE_ZERO_READ;

	FUNC7(&p_hwfn->p_rdma_info->iwarp.qp_lock);
	FUNC0(&p_hwfn->p_rdma_info->iwarp.ep_list);
	FUNC0(&p_hwfn->p_rdma_info->iwarp.listen_list);

	FUNC6(p_hwfn, PROTOCOLID_IWARP,
				  qed_iwarp_async_event);
	FUNC5(p_hwfn);

	return FUNC4(p_hwfn, params, rcv_wnd_size);
}