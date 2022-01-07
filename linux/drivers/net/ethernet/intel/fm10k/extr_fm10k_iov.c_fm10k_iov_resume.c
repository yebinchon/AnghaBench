
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_11__ {int (* connect ) (struct fm10k_hw*,TYPE_6__*) ;} ;
struct TYPE_12__ {TYPE_5__ ops; } ;
struct fm10k_vf_info {TYPE_6__ mbx; } ;
struct fm10k_iov_data {int num_vfs; struct fm10k_vf_info* vf_info; } ;
struct TYPE_9__ {int (* assign_default_mac_vlan ) (struct fm10k_hw*,struct fm10k_vf_info*) ;int (* set_lport ) (struct fm10k_hw*,struct fm10k_vf_info*,int,int ) ;int (* assign_resources ) (struct fm10k_hw*,int,int) ;} ;
struct TYPE_10__ {TYPE_3__ ops; scalar_t__ total_vfs; } ;
struct TYPE_7__ {int (* configure_dglort_map ) (struct fm10k_hw*,struct fm10k_dglort_cfg*) ;} ;
struct TYPE_8__ {int dglort_map; TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_4__ iov; TYPE_2__ mac; } ;
struct fm10k_intfc {struct fm10k_hw hw; struct fm10k_iov_data* iov_data; } ;
struct fm10k_dglort_cfg {int glort; int inner_rss; int vsi_b; void* vsi_l; int queue_b; void* rss_l; int idx; int member_0; } ;


 int ENOMEM ;
 int FM10K_DGLORTMAP_MASK_SHIFT ;
 int FM10K_DGLORTMAP_NONE ;
 int FM10K_VF_FLAG_MULTI_CAPABLE ;
 void* fls (scalar_t__) ;
 int fm10k_dglort_vf_rss ;
 int fm10k_mask_aer_comp_abort (struct pci_dev*) ;
 scalar_t__ fm10k_queues_per_pool (struct fm10k_hw*) ;
 int fm10k_vf_queue_index (struct fm10k_hw*,int ) ;
 struct fm10k_intfc* pci_get_drvdata (struct pci_dev*) ;
 int stub1 (struct fm10k_hw*,int,int) ;
 int stub2 (struct fm10k_hw*,struct fm10k_dglort_cfg*) ;
 int stub3 (struct fm10k_hw*,struct fm10k_vf_info*,int,int ) ;
 int stub4 (struct fm10k_hw*,struct fm10k_vf_info*) ;
 int stub5 (struct fm10k_hw*,TYPE_6__*) ;

int fm10k_iov_resume(struct pci_dev *pdev)
{
 struct fm10k_intfc *interface = pci_get_drvdata(pdev);
 struct fm10k_iov_data *iov_data = interface->iov_data;
 struct fm10k_dglort_cfg dglort = { 0 };
 struct fm10k_hw *hw = &interface->hw;
 int num_vfs, i;


 num_vfs = iov_data ? iov_data->num_vfs : 0;


 if (!iov_data)
  return -ENOMEM;





 fm10k_mask_aer_comp_abort(pdev);


 hw->iov.ops.assign_resources(hw, num_vfs, num_vfs);


 dglort.glort = hw->mac.dglort_map & FM10K_DGLORTMAP_NONE;
 dglort.idx = fm10k_dglort_vf_rss;
 dglort.inner_rss = 1;
 dglort.rss_l = fls(fm10k_queues_per_pool(hw) - 1);
 dglort.queue_b = fm10k_vf_queue_index(hw, 0);
 dglort.vsi_l = fls(hw->iov.total_vfs - 1);
 dglort.vsi_b = 1;

 hw->mac.ops.configure_dglort_map(hw, &dglort);


 for (i = 0; i < num_vfs; i++) {
  struct fm10k_vf_info *vf_info = &iov_data->vf_info[i];


  if (i == (~hw->mac.dglort_map >> FM10K_DGLORTMAP_MASK_SHIFT))
   break;


  hw->iov.ops.set_lport(hw, vf_info, i,
          FM10K_VF_FLAG_MULTI_CAPABLE);


  hw->iov.ops.assign_default_mac_vlan(hw, vf_info);


  vf_info->mbx.ops.connect(hw, &vf_info->mbx);
 }

 return 0;
}
