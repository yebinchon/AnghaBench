
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct fm10k_vf_info {int vf_idx; } ;
struct fm10k_mbx_info {int dummy; } ;
struct fm10k_intfc {struct pci_dev* pdev; } ;
struct fm10k_hw {struct fm10k_intfc* back; } ;
typedef int s32 ;


 int FM10K_TLV_ID_MASK ;
 int dev_err (int *,char*,int,int ) ;
 int fm10k_tlv_msg_error (struct fm10k_hw*,int**,struct fm10k_mbx_info*) ;

__attribute__((used)) static s32 fm10k_iov_msg_error(struct fm10k_hw *hw, u32 **results,
          struct fm10k_mbx_info *mbx)
{
 struct fm10k_vf_info *vf_info = (struct fm10k_vf_info *)mbx;
 struct fm10k_intfc *interface = hw->back;
 struct pci_dev *pdev = interface->pdev;

 dev_err(&pdev->dev, "Unknown message ID %u on VF %d\n",
  **results & FM10K_TLV_ID_MASK, vf_info->vf_idx);

 return fm10k_tlv_msg_error(hw, results, mbx);
}
