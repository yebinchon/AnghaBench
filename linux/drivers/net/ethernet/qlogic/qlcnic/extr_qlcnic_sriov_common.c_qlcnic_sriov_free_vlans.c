
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_vf_info {int * sriov_vlans; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;


 int kfree (int *) ;

void qlcnic_sriov_free_vlans(struct qlcnic_adapter *adapter)
{
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 struct qlcnic_vf_info *vf;
 int i;

 for (i = 0; i < sriov->num_vfs; i++) {
  vf = &sriov->vf_info[i];
  kfree(vf->sriov_vlans);
  vf->sriov_vlans = ((void*)0);
 }
}
