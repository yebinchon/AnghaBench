#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* connect ) (struct fm10k_hw*,TYPE_4__*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct fm10k_vf_info {TYPE_4__ mbx; } ;
struct fm10k_iov_data {struct fm10k_vf_info* vf_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_lport ) (struct fm10k_hw*,struct fm10k_vf_info*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* reset_resources ) (struct fm10k_hw*,struct fm10k_vf_info*) ;int /*<<< orphan*/  (* reset_lport ) (struct fm10k_hw*,struct fm10k_vf_info*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ iov; } ;
struct fm10k_intfc {struct fm10k_iov_data* iov_data; struct fm10k_hw hw; struct pci_dev* pdev; } ;
struct fm10k_fault {int func; int /*<<< orphan*/  specinfo; int /*<<< orphan*/  address; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  FM10K_FUM_FAULT 130 
#define  FM10K_PCA_FAULT 129 
#define  FM10K_THI_FAULT 128 
 int /*<<< orphan*/  FM10K_VF_FLAG_MULTI_CAPABLE ; 
 int /*<<< orphan*/  FUM_ADD_DECODE_ERR ; 
 int /*<<< orphan*/  FUM_BAD_VF_QACCESS ; 
 int /*<<< orphan*/  FUM_CSR_TIMEOUT ; 
 int /*<<< orphan*/  FUM_INVALID_ALIGN ; 
 int /*<<< orphan*/  FUM_INVALID_BE ; 
 int /*<<< orphan*/  FUM_INVALID_LENGTH ; 
 int /*<<< orphan*/  FUM_INVALID_TYPE ; 
 int /*<<< orphan*/  FUM_NO_FAULT ; 
 int /*<<< orphan*/  FUM_QPRC_CRC_ERROR ; 
 int /*<<< orphan*/  FUM_RO_ERROR ; 
 int /*<<< orphan*/  FUM_UNMAPPED_ADDR ; 
 int /*<<< orphan*/  PCA_BAD_QACCESS_PF ; 
 int /*<<< orphan*/  PCA_BAD_QACCESS_VF ; 
 int /*<<< orphan*/  PCA_MALICIOUS_REQ ; 
 int /*<<< orphan*/  PCA_NO_FAULT ; 
 int /*<<< orphan*/  PCA_POISONED_TLP ; 
 int /*<<< orphan*/  PCA_TLP_ABORT ; 
 int /*<<< orphan*/  PCA_UNMAPPED_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  THI_MAL_DIS_Q_FAULT ; 
 int /*<<< orphan*/  THI_NO_FAULT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_hw*,struct fm10k_vf_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_hw*,struct fm10k_vf_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct fm10k_hw*,struct fm10k_vf_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fm10k_hw*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC8(struct fm10k_intfc *interface, int type,
			       struct fm10k_fault *fault)
{
	struct pci_dev *pdev = interface->pdev;
	struct fm10k_hw *hw = &interface->hw;
	struct fm10k_iov_data *iov_data = interface->iov_data;
	char *error;

	switch (type) {
	case FM10K_PCA_FAULT:
		switch (fault->type) {
		default:
			error = "Unknown PCA error";
			break;
		FUNC0(PCA_NO_FAULT);
		FUNC0(PCA_UNMAPPED_ADDR);
		FUNC0(PCA_BAD_QACCESS_PF);
		FUNC0(PCA_BAD_QACCESS_VF);
		FUNC0(PCA_MALICIOUS_REQ);
		FUNC0(PCA_POISONED_TLP);
		FUNC0(PCA_TLP_ABORT);
		}
		break;
	case FM10K_THI_FAULT:
		switch (fault->type) {
		default:
			error = "Unknown THI error";
			break;
		FUNC0(THI_NO_FAULT);
		FUNC0(THI_MAL_DIS_Q_FAULT);
		}
		break;
	case FM10K_FUM_FAULT:
		switch (fault->type) {
		default:
			error = "Unknown FUM error";
			break;
		FUNC0(FUM_NO_FAULT);
		FUNC0(FUM_UNMAPPED_ADDR);
		FUNC0(FUM_BAD_VF_QACCESS);
		FUNC0(FUM_ADD_DECODE_ERR);
		FUNC0(FUM_RO_ERROR);
		FUNC0(FUM_QPRC_CRC_ERROR);
		FUNC0(FUM_CSR_TIMEOUT);
		FUNC0(FUM_INVALID_TYPE);
		FUNC0(FUM_INVALID_LENGTH);
		FUNC0(FUM_INVALID_BE);
		FUNC0(FUM_INVALID_ALIGN);
		}
		break;
	default:
		error = "Undocumented fault";
		break;
	}

	FUNC3(&pdev->dev,
		 "%s Address: 0x%llx SpecInfo: 0x%x Func: %02x.%0x\n",
		 error, fault->address, fault->specinfo,
		 FUNC2(fault->func), FUNC1(fault->func));

	/* For VF faults, clear out the respective LPORT, reset the queue
	 * resources, and then reconnect to the mailbox. This allows the
	 * VF in question to resume behavior. For transient faults that are
	 * the result of non-malicious behavior this will log the fault and
	 * allow the VF to resume functionality. Obviously for malicious VFs
	 * they will be able to attempt malicious behavior again. In this
	 * case, the system administrator will need to step in and manually
	 * remove or disable the VF in question.
	 */
	if (fault->func && iov_data) {
		int vf = fault->func - 1;
		struct fm10k_vf_info *vf_info = &iov_data->vf_info[vf];

		hw->iov.ops.reset_lport(hw, vf_info);
		hw->iov.ops.reset_resources(hw, vf_info);

		/* reset_lport disables the VF, so re-enable it */
		hw->iov.ops.set_lport(hw, vf_info, vf,
				      FM10K_VF_FLAG_MULTI_CAPABLE);

		/* reset_resources will disconnect from the mbx  */
		vf_info->mbx.ops.connect(hw, &vf_info->mbx);
	}
}