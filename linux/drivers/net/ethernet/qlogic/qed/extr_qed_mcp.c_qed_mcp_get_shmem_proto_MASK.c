#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct public_func {int config; } ;
typedef  enum qed_pci_personality { ____Placeholder_qed_pci_personality } qed_pci_personality ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_QED_RDMA ; 
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int EINVAL ; 
#define  FUNC_MF_CFG_PROTOCOL_ETHERNET 131 
#define  FUNC_MF_CFG_PROTOCOL_FCOE 130 
#define  FUNC_MF_CFG_PROTOCOL_ISCSI 129 
 int FUNC_MF_CFG_PROTOCOL_MASK ; 
#define  FUNC_MF_CFG_PROTOCOL_ROCE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int QED_PCI_ETH ; 
 int QED_PCI_FCOE ; 
 int QED_PCI_ISCSI ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,struct qed_ptt*,int*) ; 

__attribute__((used)) static int
FUNC4(struct qed_hwfn *p_hwfn,
			struct public_func *p_info,
			struct qed_ptt *p_ptt,
			enum qed_pci_personality *p_proto)
{
	int rc = 0;

	switch (p_info->config & FUNC_MF_CFG_PROTOCOL_MASK) {
	case FUNC_MF_CFG_PROTOCOL_ETHERNET:
		if (!FUNC1(CONFIG_QED_RDMA))
			*p_proto = QED_PCI_ETH;
		else if (FUNC3(p_hwfn, p_ptt, p_proto))
			FUNC2(p_hwfn, p_proto);
		break;
	case FUNC_MF_CFG_PROTOCOL_ISCSI:
		*p_proto = QED_PCI_ISCSI;
		break;
	case FUNC_MF_CFG_PROTOCOL_FCOE:
		*p_proto = QED_PCI_FCOE;
		break;
	case FUNC_MF_CFG_PROTOCOL_ROCE:
		FUNC0(p_hwfn, "RoCE personality is not a valid value!\n");
	/* Fallthrough */
	default:
		rc = -EINVAL;
	}

	return rc;
}