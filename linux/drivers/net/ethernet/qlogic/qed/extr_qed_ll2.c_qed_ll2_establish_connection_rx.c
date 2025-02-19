
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int ai_err_packet_too_big; int ai_err_no_buf; } ;
struct TYPE_3__ {int set_prod_addr; } ;
struct qed_ll2_info {TYPE_2__ input; TYPE_1__ rx_queue; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_ll2_error_handle { ____Placeholder_qed_ll2_error_handle } qed_ll2_error_handle ;
typedef enum core_error_handle { ____Placeholder_core_error_handle } core_error_handle ;


 int CORE_RX_ACTION_ON_ERROR_NO_BUFF ;
 int CORE_RX_ACTION_ON_ERROR_PACKET_TOO_BIG ;
 int DIRECT_REG_WR (int ,int) ;
 int QED_LL2_RX_REGISTERED (struct qed_ll2_info*) ;
 int SET_FIELD (int ,int ,int) ;
 int qed_ll2_get_error_choice (int) ;
 int qed_sp_ll2_rx_queue_start (struct qed_hwfn*,struct qed_ll2_info*,int ) ;

__attribute__((used)) static int qed_ll2_establish_connection_rx(struct qed_hwfn *p_hwfn,
        struct qed_ll2_info *p_ll2_conn)
{
 enum qed_ll2_error_handle error_input;
 enum core_error_handle error_mode;
 u8 action_on_error = 0;

 if (!QED_LL2_RX_REGISTERED(p_ll2_conn))
  return 0;

 DIRECT_REG_WR(p_ll2_conn->rx_queue.set_prod_addr, 0x0);
 error_input = p_ll2_conn->input.ai_err_packet_too_big;
 error_mode = qed_ll2_get_error_choice(error_input);
 SET_FIELD(action_on_error,
    CORE_RX_ACTION_ON_ERROR_PACKET_TOO_BIG, error_mode);
 error_input = p_ll2_conn->input.ai_err_no_buf;
 error_mode = qed_ll2_get_error_choice(error_input);
 SET_FIELD(action_on_error, CORE_RX_ACTION_ON_ERROR_NO_BUFF, error_mode);

 return qed_sp_ll2_rx_queue_start(p_hwfn, p_ll2_conn, action_on_error);
}
