
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qed_rdma_start_in_params {int dummy; } ;
struct qed_iwarp_info {int rcv_wnd_scale; int rcv_wnd_size; int rtr_type; int listen_list; int ep_list; int qp_lock; int peer2peer; int mpa_rev; int crc_needed; int tcp_flags; } ;
struct qed_hwfn {TYPE_1__* p_rdma_info; struct qed_dev* cdev; } ;
struct qed_dev {int dummy; } ;
typedef enum chip_ids { ____Placeholder_chip_ids } chip_ids ;
struct TYPE_4__ {int four_ports; int two_ports; } ;
struct TYPE_3__ {struct qed_iwarp_info iwarp; } ;


 int CHIP_BB ;
 int CHIP_K2 ;
 int INIT_LIST_HEAD (int *) ;
 int MPA_NEGOTIATION_TYPE_ENHANCED ;
 int MPA_RTR_TYPE_ZERO_READ ;
 int MPA_RTR_TYPE_ZERO_SEND ;
 int MPA_RTR_TYPE_ZERO_WRITE ;
 int PROTOCOLID_IWARP ;
 scalar_t__ QED_IS_BB (struct qed_dev*) ;
 int QED_IWARP_PARAM_CRC_NEEDED ;
 int QED_IWARP_PARAM_P2P ;
 int QED_IWARP_RCV_WND_SIZE_MIN ;
 int QED_IWARP_TS_EN ;
 int ilog2 (int) ;
 int qed_device_num_ports (struct qed_dev*) ;
 int qed_iwarp_async_event ;
 int qed_iwarp_ll2_start (struct qed_hwfn*,struct qed_rdma_start_in_params*,int) ;
 TYPE_2__* qed_iwarp_rcv_wnd_size ;
 int qed_ooo_setup (struct qed_hwfn*) ;
 int qed_spq_register_async_cb (struct qed_hwfn*,int ,int ) ;
 int spin_lock_init (int *) ;

int qed_iwarp_setup(struct qed_hwfn *p_hwfn,
      struct qed_rdma_start_in_params *params)
{
 struct qed_dev *cdev = p_hwfn->cdev;
 struct qed_iwarp_info *iwarp_info;
 enum chip_ids chip_id;
 u32 rcv_wnd_size;

 iwarp_info = &p_hwfn->p_rdma_info->iwarp;

 iwarp_info->tcp_flags = QED_IWARP_TS_EN;

 chip_id = QED_IS_BB(cdev) ? CHIP_BB : CHIP_K2;
 rcv_wnd_size = (qed_device_num_ports(cdev) == 4) ?
  qed_iwarp_rcv_wnd_size[chip_id].four_ports :
  qed_iwarp_rcv_wnd_size[chip_id].two_ports;


 iwarp_info->rcv_wnd_scale = ilog2(rcv_wnd_size) -
     ilog2(QED_IWARP_RCV_WND_SIZE_MIN);
 iwarp_info->rcv_wnd_size = rcv_wnd_size >> iwarp_info->rcv_wnd_scale;
 iwarp_info->crc_needed = QED_IWARP_PARAM_CRC_NEEDED;
 iwarp_info->mpa_rev = MPA_NEGOTIATION_TYPE_ENHANCED;

 iwarp_info->peer2peer = QED_IWARP_PARAM_P2P;

 iwarp_info->rtr_type = MPA_RTR_TYPE_ZERO_SEND |
    MPA_RTR_TYPE_ZERO_WRITE |
    MPA_RTR_TYPE_ZERO_READ;

 spin_lock_init(&p_hwfn->p_rdma_info->iwarp.qp_lock);
 INIT_LIST_HEAD(&p_hwfn->p_rdma_info->iwarp.ep_list);
 INIT_LIST_HEAD(&p_hwfn->p_rdma_info->iwarp.listen_list);

 qed_spq_register_async_cb(p_hwfn, PROTOCOLID_IWARP,
      qed_iwarp_async_event);
 qed_ooo_setup(p_hwfn);

 return qed_iwarp_ll2_start(p_hwfn, params, rcv_wnd_size);
}
