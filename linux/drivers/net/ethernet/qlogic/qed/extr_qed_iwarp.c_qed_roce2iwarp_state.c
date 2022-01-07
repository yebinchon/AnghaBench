
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qed_roce_qp_state { ____Placeholder_qed_roce_qp_state } qed_roce_qp_state ;
typedef enum qed_iwarp_qp_state { ____Placeholder_qed_iwarp_qp_state } qed_iwarp_qp_state ;


 int QED_IWARP_QP_STATE_CLOSING ;
 int QED_IWARP_QP_STATE_ERROR ;
 int QED_IWARP_QP_STATE_IDLE ;
 int QED_IWARP_QP_STATE_RTS ;
 int QED_IWARP_QP_STATE_TERMINATE ;
enum qed_iwarp_qp_state qed_roce2iwarp_state(enum qed_roce_qp_state state)
{
 switch (state) {
 case 132:
 case 133:
 case 131:
  return QED_IWARP_QP_STATE_IDLE;
 case 130:
  return QED_IWARP_QP_STATE_RTS;
 case 129:
  return QED_IWARP_QP_STATE_CLOSING;
 case 134:
  return QED_IWARP_QP_STATE_ERROR;
 case 128:
  return QED_IWARP_QP_STATE_TERMINATE;
 default:
  return QED_IWARP_QP_STATE_ERROR;
 }
}
