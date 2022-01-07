
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_6__ {void* state; } ;
struct TYPE_5__ {scalar_t__ update_tx_mode_flg; scalar_t__ update_rx_mode_flg; } ;
struct TYPE_4__ {void* state; } ;
struct vport_update_ramrod_data {TYPE_3__ tx_mode; TYPE_2__ common; TYPE_1__ rx_mode; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_accept_flags {int rx_accept_filter; int tx_accept_filter; scalar_t__ update_tx_mode_config; scalar_t__ update_rx_mode_config; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ) ;
 int ETH_VPORT_RX_MODE_ACCEPT_ANY_VNI ;
 int ETH_VPORT_RX_MODE_BCAST_ACCEPT_ALL ;
 int ETH_VPORT_RX_MODE_MCAST_ACCEPT_ALL ;
 int ETH_VPORT_RX_MODE_MCAST_DROP_ALL ;
 int ETH_VPORT_RX_MODE_UCAST_ACCEPT_UNMATCHED ;
 int ETH_VPORT_RX_MODE_UCAST_DROP_ALL ;
 int ETH_VPORT_TX_MODE_BCAST_ACCEPT_ALL ;
 int ETH_VPORT_TX_MODE_MCAST_ACCEPT_ALL ;
 int ETH_VPORT_TX_MODE_MCAST_DROP_ALL ;
 int ETH_VPORT_TX_MODE_UCAST_ACCEPT_ALL ;
 int ETH_VPORT_TX_MODE_UCAST_DROP_ALL ;
 int QED_ACCEPT_ANY_VNI ;
 int QED_ACCEPT_BCAST ;
 int QED_ACCEPT_MCAST_MATCHED ;
 int QED_ACCEPT_MCAST_UNMATCHED ;
 int QED_ACCEPT_NONE ;
 int QED_ACCEPT_UCAST_MATCHED ;
 int QED_ACCEPT_UCAST_UNMATCHED ;
 int QED_MSG_SP ;
 int SET_FIELD (int ,int ,int) ;
 void* cpu_to_le16 (int ) ;

__attribute__((used)) static void
qed_sp_update_accept_mode(struct qed_hwfn *p_hwfn,
     struct vport_update_ramrod_data *p_ramrod,
     struct qed_filter_accept_flags accept_flags)
{
 p_ramrod->common.update_rx_mode_flg =
  accept_flags.update_rx_mode_config;

 p_ramrod->common.update_tx_mode_flg =
  accept_flags.update_tx_mode_config;


 if (p_ramrod->common.update_rx_mode_flg) {
  u8 accept_filter = accept_flags.rx_accept_filter;
  u16 state = 0;

  SET_FIELD(state, ETH_VPORT_RX_MODE_UCAST_DROP_ALL,
     !(!!(accept_filter & QED_ACCEPT_UCAST_MATCHED) ||
       !!(accept_filter & QED_ACCEPT_UCAST_UNMATCHED)));

  SET_FIELD(state, ETH_VPORT_RX_MODE_UCAST_ACCEPT_UNMATCHED,
     !!(accept_filter & QED_ACCEPT_UCAST_UNMATCHED));

  SET_FIELD(state, ETH_VPORT_RX_MODE_MCAST_DROP_ALL,
     !(!!(accept_filter & QED_ACCEPT_MCAST_MATCHED) ||
       !!(accept_filter & QED_ACCEPT_MCAST_UNMATCHED)));

  SET_FIELD(state, ETH_VPORT_RX_MODE_MCAST_ACCEPT_ALL,
     (!!(accept_filter & QED_ACCEPT_MCAST_MATCHED) &&
      !!(accept_filter & QED_ACCEPT_MCAST_UNMATCHED)));

  SET_FIELD(state, ETH_VPORT_RX_MODE_BCAST_ACCEPT_ALL,
     !!(accept_filter & QED_ACCEPT_BCAST));

  SET_FIELD(state, ETH_VPORT_RX_MODE_ACCEPT_ANY_VNI,
     !!(accept_filter & QED_ACCEPT_ANY_VNI));

  p_ramrod->rx_mode.state = cpu_to_le16(state);
  DP_VERBOSE(p_hwfn, QED_MSG_SP,
      "p_ramrod->rx_mode.state = 0x%x\n", state);
 }


 if (p_ramrod->common.update_tx_mode_flg) {
  u8 accept_filter = accept_flags.tx_accept_filter;
  u16 state = 0;

  SET_FIELD(state, ETH_VPORT_TX_MODE_UCAST_DROP_ALL,
     !!(accept_filter & QED_ACCEPT_NONE));

  SET_FIELD(state, ETH_VPORT_TX_MODE_MCAST_DROP_ALL,
     !!(accept_filter & QED_ACCEPT_NONE));

  SET_FIELD(state, ETH_VPORT_TX_MODE_MCAST_ACCEPT_ALL,
     (!!(accept_filter & QED_ACCEPT_MCAST_MATCHED) &&
      !!(accept_filter & QED_ACCEPT_MCAST_UNMATCHED)));

  SET_FIELD(state, ETH_VPORT_TX_MODE_UCAST_ACCEPT_ALL,
     (!!(accept_filter & QED_ACCEPT_UCAST_MATCHED) &&
      !!(accept_filter & QED_ACCEPT_UCAST_UNMATCHED)));

  SET_FIELD(state, ETH_VPORT_TX_MODE_BCAST_ACCEPT_ALL,
     !!(accept_filter & QED_ACCEPT_BCAST));

  p_ramrod->tx_mode.state = cpu_to_le16(state);
  DP_VERBOSE(p_hwfn, QED_MSG_SP,
      "p_ramrod->tx_mode.state = 0x%x\n", state);
 }
}
