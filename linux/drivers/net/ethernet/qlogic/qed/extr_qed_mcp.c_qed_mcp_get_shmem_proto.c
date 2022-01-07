
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct public_func {int config; } ;
typedef enum qed_pci_personality { ____Placeholder_qed_pci_personality } qed_pci_personality ;


 int CONFIG_QED_RDMA ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EINVAL ;



 int FUNC_MF_CFG_PROTOCOL_MASK ;

 int IS_ENABLED (int ) ;
 int QED_PCI_ETH ;
 int QED_PCI_FCOE ;
 int QED_PCI_ISCSI ;
 int qed_mcp_get_shmem_proto_legacy (struct qed_hwfn*,int*) ;
 int qed_mcp_get_shmem_proto_mfw (struct qed_hwfn*,struct qed_ptt*,int*) ;

__attribute__((used)) static int
qed_mcp_get_shmem_proto(struct qed_hwfn *p_hwfn,
   struct public_func *p_info,
   struct qed_ptt *p_ptt,
   enum qed_pci_personality *p_proto)
{
 int rc = 0;

 switch (p_info->config & FUNC_MF_CFG_PROTOCOL_MASK) {
 case 131:
  if (!IS_ENABLED(CONFIG_QED_RDMA))
   *p_proto = QED_PCI_ETH;
  else if (qed_mcp_get_shmem_proto_mfw(p_hwfn, p_ptt, p_proto))
   qed_mcp_get_shmem_proto_legacy(p_hwfn, p_proto);
  break;
 case 129:
  *p_proto = QED_PCI_ISCSI;
  break;
 case 130:
  *p_proto = QED_PCI_FCOE;
  break;
 case 128:
  DP_NOTICE(p_hwfn, "RoCE personality is not a valid value!\n");

 default:
  rc = -EINVAL;
 }

 return rc;
}
