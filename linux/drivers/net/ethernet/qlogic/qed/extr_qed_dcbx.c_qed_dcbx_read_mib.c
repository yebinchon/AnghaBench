
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_mib_read_type { ____Placeholder_qed_mib_read_type } qed_mib_read_type ;


 int DP_ERR (struct qed_hwfn*,char*,int) ;
 int EINVAL ;





 int qed_dcbx_read_local_lldp_mib (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_dcbx_read_local_mib (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_dcbx_read_operational_mib (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_dcbx_read_remote_lldp_mib (struct qed_hwfn*,struct qed_ptt*,int) ;
 int qed_dcbx_read_remote_mib (struct qed_hwfn*,struct qed_ptt*,int) ;

__attribute__((used)) static int qed_dcbx_read_mib(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt, enum qed_mib_read_type type)
{
 int rc = -EINVAL;

 switch (type) {
 case 130:
  rc = qed_dcbx_read_operational_mib(p_hwfn, p_ptt, type);
  break;
 case 128:
  rc = qed_dcbx_read_remote_mib(p_hwfn, p_ptt, type);
  break;
 case 131:
  rc = qed_dcbx_read_local_mib(p_hwfn, p_ptt);
  break;
 case 129:
  rc = qed_dcbx_read_remote_lldp_mib(p_hwfn, p_ptt, type);
  break;
 case 132:
  rc = qed_dcbx_read_local_lldp_mib(p_hwfn, p_ptt);
  break;
 default:
  DP_ERR(p_hwfn, "MIB read err, unknown mib type %d\n", type);
 }

 return rc;
}
