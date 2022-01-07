
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct fm10k_vf_info {int glort; } ;
struct fm10k_iov_data {int num_vfs; struct fm10k_vf_info* vf_info; } ;
struct TYPE_3__ {int (* reset_lport ) (struct fm10k_hw*,struct fm10k_vf_info*) ;int (* reset_resources ) (struct fm10k_hw*,struct fm10k_vf_info*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ iov; } ;
struct fm10k_intfc {struct fm10k_hw hw; struct fm10k_iov_data* iov_data; } ;


 int FM10K_DGLORTMAP (int ) ;
 int FM10K_DGLORTMAP_NONE ;
 int fm10k_clear_macvlan_queue (struct fm10k_intfc*,int ,int) ;
 int fm10k_dglort_vf_rss ;
 int fm10k_write_reg (struct fm10k_hw*,int ,int ) ;
 struct fm10k_intfc* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct fm10k_hw*,struct fm10k_vf_info*) ;
 int stub2 (struct fm10k_hw*,struct fm10k_vf_info*) ;

void fm10k_iov_suspend(struct pci_dev *pdev)
{
 struct fm10k_intfc *interface = pci_get_drvdata(pdev);
 struct fm10k_iov_data *iov_data = interface->iov_data;
 struct fm10k_hw *hw = &interface->hw;
 int num_vfs, i;


 num_vfs = iov_data ? iov_data->num_vfs : 0;


 fm10k_write_reg(hw, FM10K_DGLORTMAP(fm10k_dglort_vf_rss),
   FM10K_DGLORTMAP_NONE);


 for (i = 0; i < num_vfs; i++) {
  struct fm10k_vf_info *vf_info = &iov_data->vf_info[i];

  hw->iov.ops.reset_resources(hw, vf_info);
  hw->iov.ops.reset_lport(hw, vf_info);
  fm10k_clear_macvlan_queue(interface, vf_info->glort, 0);
 }
}
