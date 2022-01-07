
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qed_ll2_params {int rx_vlan_stripping; int drop_ttl0_packets; int mtu; } ;
struct TYPE_3__ {int conn_type; int tx_dest; scalar_t__ tx_tc; int tx_num_desc; int rx_vlan_removal_en; int rx_drop_ttl0_flg; int rx_num_desc; int mtu; } ;
struct qed_ll2_acquire_data {TYPE_1__ input; TYPE_2__* cbs; int * p_connection_handle; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_ll2_conn_type { ____Placeholder_qed_ll2_conn_type } qed_ll2_conn_type ;
struct TYPE_4__ {struct qed_hwfn* cookie; } ;


 scalar_t__ PKT_LB_TC ;
 int QED_LL2_RX_SIZE ;
 int QED_LL2_TX_DEST_LB ;
 int QED_LL2_TX_DEST_NW ;
 int QED_LL2_TX_SIZE ;
 TYPE_2__ ll2_cbs ;
 int memset (struct qed_ll2_acquire_data*,int ,int) ;

__attribute__((used)) static void qed_ll2_set_conn_data(struct qed_hwfn *p_hwfn,
      struct qed_ll2_acquire_data *data,
      struct qed_ll2_params *params,
      enum qed_ll2_conn_type conn_type,
      u8 *handle, bool lb)
{
 memset(data, 0, sizeof(*data));

 data->input.conn_type = conn_type;
 data->input.mtu = params->mtu;
 data->input.rx_num_desc = QED_LL2_RX_SIZE;
 data->input.rx_drop_ttl0_flg = params->drop_ttl0_packets;
 data->input.rx_vlan_removal_en = params->rx_vlan_stripping;
 data->input.tx_num_desc = QED_LL2_TX_SIZE;
 data->p_connection_handle = handle;
 data->cbs = &ll2_cbs;
 ll2_cbs.cookie = p_hwfn;

 if (lb) {
  data->input.tx_tc = PKT_LB_TC;
  data->input.tx_dest = QED_LL2_TX_DEST_LB;
 } else {
  data->input.tx_tc = 0;
  data->input.tx_dest = QED_LL2_TX_DEST_NW;
 }
}
