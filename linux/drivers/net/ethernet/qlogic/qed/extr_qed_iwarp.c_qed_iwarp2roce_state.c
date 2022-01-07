
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qed_roce_qp_state { ____Placeholder_qed_roce_qp_state } qed_roce_qp_state ;
typedef enum qed_iwarp_qp_state { ____Placeholder_qed_iwarp_qp_state } qed_iwarp_qp_state ;







 int QED_ROCE_QP_STATE_ERR ;
 int QED_ROCE_QP_STATE_INIT ;
 int QED_ROCE_QP_STATE_RTS ;
 int QED_ROCE_QP_STATE_SQD ;
 int QED_ROCE_QP_STATE_SQE ;

__attribute__((used)) static enum qed_roce_qp_state
qed_iwarp2roce_state(enum qed_iwarp_qp_state state)
{
 switch (state) {
 case 130:
  return QED_ROCE_QP_STATE_INIT;
 case 129:
  return QED_ROCE_QP_STATE_RTS;
 case 128:
  return QED_ROCE_QP_STATE_SQE;
 case 132:
  return QED_ROCE_QP_STATE_SQD;
 case 131:
  return QED_ROCE_QP_STATE_ERR;
 default:
  return QED_ROCE_QP_STATE_ERR;
 }
}
