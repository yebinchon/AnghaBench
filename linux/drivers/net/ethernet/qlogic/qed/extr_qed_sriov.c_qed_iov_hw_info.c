
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct qed_hwfn {int abs_pf_id; struct qed_dev* cdev; } ;
struct qed_dev {TYPE_1__* p_iov_info; int pdev; } ;
struct TYPE_3__ {int pos; int offset; void* first_vf_in_pf; int total_vfs; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_VF (struct qed_dev*) ;
 scalar_t__ MAX_NUM_VFS_BB ;
 int PCI_EXT_CAP_ID_SRIOV ;
 int QED_MSG_IOV ;
 scalar_t__ QED_PATH_ID (struct qed_hwfn*) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int pci_find_ext_capability (int ,int ) ;
 int qed_iov_pci_cfg_info (struct qed_dev*) ;

int qed_iov_hw_info(struct qed_hwfn *p_hwfn)
{
 struct qed_dev *cdev = p_hwfn->cdev;
 int pos;
 int rc;

 if (IS_VF(p_hwfn->cdev))
  return 0;


 pos = pci_find_ext_capability(p_hwfn->cdev->pdev,
          PCI_EXT_CAP_ID_SRIOV);
 if (!pos) {
  DP_VERBOSE(p_hwfn, QED_MSG_IOV, "No PCIe IOV support\n");
  return 0;
 }


 cdev->p_iov_info = kzalloc(sizeof(*cdev->p_iov_info), GFP_KERNEL);
 if (!cdev->p_iov_info)
  return -ENOMEM;

 cdev->p_iov_info->pos = pos;

 rc = qed_iov_pci_cfg_info(cdev);
 if (rc)
  return rc;





 if (!cdev->p_iov_info->total_vfs) {
  DP_VERBOSE(p_hwfn, QED_MSG_IOV,
      "IOV capabilities, but no VFs are published\n");
  kfree(cdev->p_iov_info);
  cdev->p_iov_info = ((void*)0);
  return 0;
 }
 if (p_hwfn->cdev->p_iov_info->offset < (256 - p_hwfn->abs_pf_id)) {
  u32 first = p_hwfn->cdev->p_iov_info->offset +
       p_hwfn->abs_pf_id - 16;

  cdev->p_iov_info->first_vf_in_pf = first;

  if (QED_PATH_ID(p_hwfn))
   cdev->p_iov_info->first_vf_in_pf -= MAX_NUM_VFS_BB;
 } else {
  u32 first = p_hwfn->cdev->p_iov_info->offset +
       p_hwfn->abs_pf_id - 256;

  cdev->p_iov_info->first_vf_in_pf = first;
 }

 DP_VERBOSE(p_hwfn, QED_MSG_IOV,
     "First VF in hwfn 0x%08x\n",
     cdev->p_iov_info->first_vf_in_pf);

 return 0;
}
