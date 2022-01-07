
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_pci_personality { ____Placeholder_qed_pci_personality } qed_pci_personality ;


 int DP_NOTICE (struct qed_hwfn*,char*,scalar_t__) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,scalar_t__,...) ;
 int DRV_MSG_CODE_GET_PF_RDMA_PROTOCOL ;
 int EINVAL ;




 scalar_t__ FW_MSG_CODE_OK ;
 int NETIF_MSG_IFUP ;
 int QED_PCI_ETH ;
 int QED_PCI_ETH_IWARP ;
 int QED_PCI_ETH_RDMA ;
 int QED_PCI_ETH_ROCE ;
 int qed_mcp_cmd (struct qed_hwfn*,struct qed_ptt*,int ,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int
qed_mcp_get_shmem_proto_mfw(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       enum qed_pci_personality *p_proto)
{
 u32 resp = 0, param = 0;
 int rc;

 rc = qed_mcp_cmd(p_hwfn, p_ptt,
    DRV_MSG_CODE_GET_PF_RDMA_PROTOCOL, 0, &resp, &param);
 if (rc)
  return rc;
 if (resp != FW_MSG_CODE_OK) {
  DP_VERBOSE(p_hwfn, NETIF_MSG_IFUP,
      "MFW lacks support for command; Returns %08x\n",
      resp);
  return -EINVAL;
 }

 switch (param) {
 case 129:
  *p_proto = QED_PCI_ETH;
  break;
 case 128:
  *p_proto = QED_PCI_ETH_ROCE;
  break;
 case 130:
  *p_proto = QED_PCI_ETH_IWARP;
  break;
 case 131:
  *p_proto = QED_PCI_ETH_RDMA;
  break;
 default:
  DP_NOTICE(p_hwfn,
     "MFW answers GET_PF_RDMA_PROTOCOL but param is %08x\n",
     param);
  return -EINVAL;
 }

 DP_VERBOSE(p_hwfn,
     NETIF_MSG_IFUP,
     "According to capabilities, L2 personality is %08x [resp %08x param %08x]\n",
     (u32) *p_proto, resp, param);
 return 0;
}
