
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int device_capabilities; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
typedef enum qed_pci_personality { ____Placeholder_qed_pci_personality } qed_pci_personality ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ) ;
 int NETIF_MSG_IFUP ;
 int QED_DEV_CAP_ROCE ;
 int QED_PCI_ETH ;
 int QED_PCI_ETH_ROCE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
qed_mcp_get_shmem_proto_legacy(struct qed_hwfn *p_hwfn,
          enum qed_pci_personality *p_proto)
{



 if (test_bit(QED_DEV_CAP_ROCE, &p_hwfn->hw_info.device_capabilities))
  *p_proto = QED_PCI_ETH_ROCE;
 else
  *p_proto = QED_PCI_ETH;

 DP_VERBOSE(p_hwfn, NETIF_MSG_IFUP,
     "According to Legacy capabilities, L2 personality is %08x\n",
     (u32) *p_proto);
}
