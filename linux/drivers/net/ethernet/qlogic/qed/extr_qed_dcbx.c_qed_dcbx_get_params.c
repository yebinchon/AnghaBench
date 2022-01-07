
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int dummy; } ;
struct qed_dcbx_get {int dummy; } ;
typedef enum qed_mib_read_type { ____Placeholder_qed_mib_read_type } qed_mib_read_type ;


 int DP_ERR (struct qed_hwfn*,char*,int) ;
 int EINVAL ;





 int qed_dcbx_get_local_lldp_params (struct qed_hwfn*,struct qed_dcbx_get*) ;
 int qed_dcbx_get_local_params (struct qed_hwfn*,struct qed_dcbx_get*) ;
 int qed_dcbx_get_operational_params (struct qed_hwfn*,struct qed_dcbx_get*) ;
 int qed_dcbx_get_remote_lldp_params (struct qed_hwfn*,struct qed_dcbx_get*) ;
 int qed_dcbx_get_remote_params (struct qed_hwfn*,struct qed_dcbx_get*) ;

__attribute__((used)) static int
qed_dcbx_get_params(struct qed_hwfn *p_hwfn, struct qed_dcbx_get *p_params,
      enum qed_mib_read_type type)
{
 switch (type) {
 case 128:
  qed_dcbx_get_remote_params(p_hwfn, p_params);
  break;
 case 131:
  qed_dcbx_get_local_params(p_hwfn, p_params);
  break;
 case 130:
  qed_dcbx_get_operational_params(p_hwfn, p_params);
  break;
 case 129:
  qed_dcbx_get_remote_lldp_params(p_hwfn, p_params);
  break;
 case 132:
  qed_dcbx_get_local_lldp_params(p_hwfn, p_params);
  break;
 default:
  DP_ERR(p_hwfn, "MIB read err, unknown mib type %d\n", type);
  return -EINVAL;
 }

 return 0;
}
