
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_mcp_function_info {int bandwidth_min; int bandwidth_max; } ;
struct qed_hwfn {TYPE_1__* mcp_info; } ;
struct public_func {int config; } ;
struct TYPE_2__ {struct qed_mcp_function_info func_info; } ;


 int DP_INFO (struct qed_hwfn*,char*,int) ;
 int FUNC_MF_CFG_MAX_BW ;
 int FUNC_MF_CFG_MIN_BW ;
 void* QED_MFW_GET_FIELD (int ,int ) ;

__attribute__((used)) static void qed_read_pf_bandwidth(struct qed_hwfn *p_hwfn,
      struct public_func *p_shmem_info)
{
 struct qed_mcp_function_info *p_info;

 p_info = &p_hwfn->mcp_info->func_info;

 p_info->bandwidth_min = QED_MFW_GET_FIELD(p_shmem_info->config,
        FUNC_MF_CFG_MIN_BW);
 if (p_info->bandwidth_min < 1 || p_info->bandwidth_min > 100) {
  DP_INFO(p_hwfn,
   "bandwidth minimum out of bounds [%02x]. Set to 1\n",
   p_info->bandwidth_min);
  p_info->bandwidth_min = 1;
 }

 p_info->bandwidth_max = QED_MFW_GET_FIELD(p_shmem_info->config,
        FUNC_MF_CFG_MAX_BW);
 if (p_info->bandwidth_max < 1 || p_info->bandwidth_max > 100) {
  DP_INFO(p_hwfn,
   "bandwidth maximum out of bounds [%02x]. Set to 100\n",
   p_info->bandwidth_max);
  p_info->bandwidth_max = 100;
 }
}
