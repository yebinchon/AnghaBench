
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_7__ {int (* connect ) (struct fm10k_hw*,TYPE_4__*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct fm10k_vf_info {TYPE_4__ mbx; } ;
struct fm10k_iov_data {struct fm10k_vf_info* vf_info; } ;
struct TYPE_5__ {int (* set_lport ) (struct fm10k_hw*,struct fm10k_vf_info*,int,int ) ;int (* reset_resources ) (struct fm10k_hw*,struct fm10k_vf_info*) ;int (* reset_lport ) (struct fm10k_hw*,struct fm10k_vf_info*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ iov; } ;
struct fm10k_intfc {struct fm10k_iov_data* iov_data; struct fm10k_hw hw; struct pci_dev* pdev; } ;
struct fm10k_fault {int func; int specinfo; int address; int type; } ;


 int FM10K_ERR_MSG (int ) ;



 int FM10K_VF_FLAG_MULTI_CAPABLE ;
 int FUM_ADD_DECODE_ERR ;
 int FUM_BAD_VF_QACCESS ;
 int FUM_CSR_TIMEOUT ;
 int FUM_INVALID_ALIGN ;
 int FUM_INVALID_BE ;
 int FUM_INVALID_LENGTH ;
 int FUM_INVALID_TYPE ;
 int FUM_NO_FAULT ;
 int FUM_QPRC_CRC_ERROR ;
 int FUM_RO_ERROR ;
 int FUM_UNMAPPED_ADDR ;
 int PCA_BAD_QACCESS_PF ;
 int PCA_BAD_QACCESS_VF ;
 int PCA_MALICIOUS_REQ ;
 int PCA_NO_FAULT ;
 int PCA_POISONED_TLP ;
 int PCA_TLP_ABORT ;
 int PCA_UNMAPPED_ADDR ;
 int PCI_FUNC (int) ;
 int PCI_SLOT (int) ;
 int THI_MAL_DIS_Q_FAULT ;
 int THI_NO_FAULT ;
 int dev_warn (int *,char*,char*,int ,int ,int ,int ) ;
 int stub1 (struct fm10k_hw*,struct fm10k_vf_info*) ;
 int stub2 (struct fm10k_hw*,struct fm10k_vf_info*) ;
 int stub3 (struct fm10k_hw*,struct fm10k_vf_info*,int,int ) ;
 int stub4 (struct fm10k_hw*,TYPE_4__*) ;

__attribute__((used)) static void fm10k_handle_fault(struct fm10k_intfc *interface, int type,
          struct fm10k_fault *fault)
{
 struct pci_dev *pdev = interface->pdev;
 struct fm10k_hw *hw = &interface->hw;
 struct fm10k_iov_data *iov_data = interface->iov_data;
 char *error;

 switch (type) {
 case 129:
  switch (fault->type) {
  default:
   error = "Unknown PCA error";
   break;
  FM10K_ERR_MSG(PCA_NO_FAULT);
  FM10K_ERR_MSG(PCA_UNMAPPED_ADDR);
  FM10K_ERR_MSG(PCA_BAD_QACCESS_PF);
  FM10K_ERR_MSG(PCA_BAD_QACCESS_VF);
  FM10K_ERR_MSG(PCA_MALICIOUS_REQ);
  FM10K_ERR_MSG(PCA_POISONED_TLP);
  FM10K_ERR_MSG(PCA_TLP_ABORT);
  }
  break;
 case 128:
  switch (fault->type) {
  default:
   error = "Unknown THI error";
   break;
  FM10K_ERR_MSG(THI_NO_FAULT);
  FM10K_ERR_MSG(THI_MAL_DIS_Q_FAULT);
  }
  break;
 case 130:
  switch (fault->type) {
  default:
   error = "Unknown FUM error";
   break;
  FM10K_ERR_MSG(FUM_NO_FAULT);
  FM10K_ERR_MSG(FUM_UNMAPPED_ADDR);
  FM10K_ERR_MSG(FUM_BAD_VF_QACCESS);
  FM10K_ERR_MSG(FUM_ADD_DECODE_ERR);
  FM10K_ERR_MSG(FUM_RO_ERROR);
  FM10K_ERR_MSG(FUM_QPRC_CRC_ERROR);
  FM10K_ERR_MSG(FUM_CSR_TIMEOUT);
  FM10K_ERR_MSG(FUM_INVALID_TYPE);
  FM10K_ERR_MSG(FUM_INVALID_LENGTH);
  FM10K_ERR_MSG(FUM_INVALID_BE);
  FM10K_ERR_MSG(FUM_INVALID_ALIGN);
  }
  break;
 default:
  error = "Undocumented fault";
  break;
 }

 dev_warn(&pdev->dev,
   "%s Address: 0x%llx SpecInfo: 0x%x Func: %02x.%0x\n",
   error, fault->address, fault->specinfo,
   PCI_SLOT(fault->func), PCI_FUNC(fault->func));
 if (fault->func && iov_data) {
  int vf = fault->func - 1;
  struct fm10k_vf_info *vf_info = &iov_data->vf_info[vf];

  hw->iov.ops.reset_lport(hw, vf_info);
  hw->iov.ops.reset_resources(hw, vf_info);


  hw->iov.ops.set_lport(hw, vf_info, vf,
          FM10K_VF_FLAG_MULTI_CAPABLE);


  vf_info->mbx.ops.connect(hw, &vf_info->mbx);
 }
}
