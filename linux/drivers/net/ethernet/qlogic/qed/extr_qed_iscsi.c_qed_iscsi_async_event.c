
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union event_ring_data {int dummy; } event_ring_data ;
typedef int u8 ;
typedef int u16 ;
struct qed_iscsi_info {int (* event_cb ) (int ,int ,union event_ring_data*) ;int event_context; } ;
struct qed_hwfn {struct qed_iscsi_info* p_iscsi_info; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EINVAL ;
 int stub1 (int ,int ,union event_ring_data*) ;

__attribute__((used)) static int
qed_iscsi_async_event(struct qed_hwfn *p_hwfn,
        u8 fw_event_code,
        u16 echo, union event_ring_data *data, u8 fw_return_code)
{
 if (p_hwfn->p_iscsi_info->event_cb) {
  struct qed_iscsi_info *p_iscsi = p_hwfn->p_iscsi_info;

  return p_iscsi->event_cb(p_iscsi->event_context,
      fw_event_code, data);
 } else {
  DP_NOTICE(p_hwfn, "iSCSI async completion is not set\n");
  return -EINVAL;
 }
}
