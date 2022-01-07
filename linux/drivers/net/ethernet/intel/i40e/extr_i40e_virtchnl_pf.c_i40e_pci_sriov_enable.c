
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct i40e_pf {int num_req_vfs; int state; } ;


 int EPERM ;
 int __I40E_TESTING ;
 int dev_info (int *,char*,int) ;
 int dev_warn (int *,char*,...) ;
 int i40e_alloc_vfs (struct i40e_pf*,int) ;
 int i40e_free_vfs (struct i40e_pf*) ;
 struct i40e_pf* pci_get_drvdata (struct pci_dev*) ;
 int pci_num_vf (struct pci_dev*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int i40e_pci_sriov_enable(struct pci_dev *pdev, int num_vfs)
{
 return 0;
}
