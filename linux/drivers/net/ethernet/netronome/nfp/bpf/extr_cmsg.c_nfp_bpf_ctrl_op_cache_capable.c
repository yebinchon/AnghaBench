
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nfp_ccm_type { ____Placeholder_nfp_ccm_type } nfp_ccm_type ;


 int NFP_CCM_TYPE_BPF_MAP_GETNEXT ;
 int NFP_CCM_TYPE_BPF_MAP_LOOKUP ;

__attribute__((used)) static bool nfp_bpf_ctrl_op_cache_capable(enum nfp_ccm_type op)
{
 return op == NFP_CCM_TYPE_BPF_MAP_LOOKUP ||
        op == NFP_CCM_TYPE_BPF_MAP_GETNEXT;
}
