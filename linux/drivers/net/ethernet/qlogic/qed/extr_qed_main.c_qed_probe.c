
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_probe_params {int recov_in_prog; int dp_level; int dp_module; scalar_t__ is_vf; int protocol; } ;
struct qed_dev {int b_is_vf; int recov_in_prog; int protocol; int drv_type; } ;
struct pci_dev {int dummy; } ;


 int DP_ERR (struct qed_dev*,char*) ;
 int DP_INFO (struct qed_dev*,char*) ;
 int DRV_ID_DRV_TYPE_LINUX ;
 int QED_PCI_DEFAULT ;
 struct qed_dev* qed_alloc_cdev (struct pci_dev*) ;
 int qed_devlink_register (struct qed_dev*) ;
 int qed_free_cdev (struct qed_dev*) ;
 int qed_free_pci (struct qed_dev*) ;
 int qed_hw_prepare (struct qed_dev*,int ) ;
 int qed_init_dp (struct qed_dev*,int ,int ) ;
 int qed_init_pci (struct qed_dev*,struct pci_dev*) ;

__attribute__((used)) static struct qed_dev *qed_probe(struct pci_dev *pdev,
     struct qed_probe_params *params)
{
 struct qed_dev *cdev;
 int rc;

 cdev = qed_alloc_cdev(pdev);
 if (!cdev)
  goto err0;

 cdev->drv_type = DRV_ID_DRV_TYPE_LINUX;
 cdev->protocol = params->protocol;

 if (params->is_vf)
  cdev->b_is_vf = 1;

 qed_init_dp(cdev, params->dp_module, params->dp_level);

 cdev->recov_in_prog = params->recov_in_prog;

 rc = qed_init_pci(cdev, pdev);
 if (rc) {
  DP_ERR(cdev, "init pci failed\n");
  goto err1;
 }
 DP_INFO(cdev, "PCI init completed successfully\n");

 rc = qed_devlink_register(cdev);
 if (rc) {
  DP_INFO(cdev, "Failed to register devlink.\n");
  goto err2;
 }

 rc = qed_hw_prepare(cdev, QED_PCI_DEFAULT);
 if (rc) {
  DP_ERR(cdev, "hw prepare failed\n");
  goto err2;
 }

 DP_INFO(cdev, "qed_probe completed successfully\n");

 return cdev;

err2:
 qed_free_pci(cdev);
err1:
 qed_free_cdev(cdev);
err0:
 return ((void*)0);
}
