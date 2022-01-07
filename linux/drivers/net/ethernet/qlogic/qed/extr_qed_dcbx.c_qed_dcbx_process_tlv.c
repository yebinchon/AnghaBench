
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef void* u16 ;
struct qed_ptt {int dummy; } ;
struct TYPE_5__ {scalar_t__ tc; } ;
struct qed_hwfn {TYPE_2__ ufp_info; TYPE_1__* cdev; } ;
struct qed_dcbx_results {TYPE_3__* arr; } ;
struct dcbx_app_priority_entry {int entry; } ;
typedef enum dcbx_protocol_type { ____Placeholder_dcbx_protocol_type } dcbx_protocol_type ;
struct TYPE_6__ {scalar_t__ tc; int priority; scalar_t__ update; } ;
struct TYPE_4__ {int mf_bits; } ;


 int DCBX_APP_PRI_MAP ;
 int DCBX_APP_PROTOCOL_ID ;
 scalar_t__ DCBX_CONFIG_VERSION_IEEE ;
 int DCBX_MAX_PROTOCOL_TYPE ;
 int DCBX_PROTOCOL_ETH ;
 int DP_ERR (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int EINVAL ;
 scalar_t__ QED_DCBX_PRIO2TC (int ,int) ;
 void* QED_MFW_GET_FIELD (int ,int ) ;
 int QED_MF_UFP_SPECIFIC ;
 int QED_MSG_DCB ;
 int ffs (scalar_t__) ;
 scalar_t__ qed_dcbx_get_app_protocol_type (struct qed_hwfn*,int ,void*,int*,int) ;
 int qed_dcbx_update_app_info (struct qed_dcbx_results*,struct qed_hwfn*,struct qed_ptt*,int,int,int,scalar_t__,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
qed_dcbx_process_tlv(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt,
       struct qed_dcbx_results *p_data,
       struct dcbx_app_priority_entry *p_tbl,
       u32 pri_tc_tbl, int count, u8 dcbx_version)
{
 enum dcbx_protocol_type type;
 bool enable, ieee, eth_tlv;
 u8 tc, priority_map;
 u16 protocol_id;
 int priority;
 int i;

 DP_VERBOSE(p_hwfn, QED_MSG_DCB, "Num APP entries = %d\n", count);

 ieee = (dcbx_version == DCBX_CONFIG_VERSION_IEEE);
 eth_tlv = 0;

 for (i = 0; i < count; i++) {
  protocol_id = QED_MFW_GET_FIELD(p_tbl[i].entry,
      DCBX_APP_PROTOCOL_ID);
  priority_map = QED_MFW_GET_FIELD(p_tbl[i].entry,
       DCBX_APP_PRI_MAP);
  priority = ffs(priority_map) - 1;
  if (priority < 0) {
   DP_ERR(p_hwfn, "Invalid priority\n");
   return -EINVAL;
  }

  tc = QED_DCBX_PRIO2TC(pri_tc_tbl, priority);
  if (qed_dcbx_get_app_protocol_type(p_hwfn, p_tbl[i].entry,
         protocol_id, &type, ieee)) {






   if (type == DCBX_PROTOCOL_ETH) {
    enable = 0;
    eth_tlv = 1;
   } else {
    enable = 1;
   }

   qed_dcbx_update_app_info(p_data, p_hwfn, p_ptt, 1,
       enable, priority, tc, type);
  }
 }


 if (test_bit(QED_MF_UFP_SPECIFIC, &p_hwfn->cdev->mf_bits) && !eth_tlv)
  p_data->arr[DCBX_PROTOCOL_ETH].tc = p_hwfn->ufp_info.tc;







 tc = p_data->arr[DCBX_PROTOCOL_ETH].tc;
 priority = p_data->arr[DCBX_PROTOCOL_ETH].priority;
 for (type = 0; type < DCBX_MAX_PROTOCOL_TYPE; type++) {
  if (p_data->arr[type].update)
   continue;

  enable = (type == DCBX_PROTOCOL_ETH) ? 0 : !!dcbx_version;
  qed_dcbx_update_app_info(p_data, p_hwfn, p_ptt, 0, enable,
      priority, tc, type);
 }

 return 0;
}
