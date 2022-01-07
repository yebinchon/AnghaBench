
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vf_resources {unsigned int nvi; int niqflint; unsigned int nethctrl; unsigned int neq; int pmask; } ;
struct TYPE_4__ {unsigned int max_ethqsets; } ;
struct TYPE_3__ {unsigned int nports; struct vf_resources vfres; } ;
struct adapter {TYPE_2__ sge; TYPE_1__ params; int pdev_dev; } ;


 unsigned int MAX_ETH_QSETS ;
 unsigned int MAX_NPORTS ;
 scalar_t__ MSI_MSI ;
 int dev_warn (int ,char*,unsigned int,unsigned int,...) ;
 unsigned int hweight32 (int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 scalar_t__ msi ;

__attribute__((used)) static void size_nports_qsets(struct adapter *adapter)
{
 struct vf_resources *vfres = &adapter->params.vfres;
 unsigned int ethqsets, pmask_nports;




 adapter->params.nports = vfres->nvi;
 if (adapter->params.nports > MAX_NPORTS) {
  dev_warn(adapter->pdev_dev, "only using %d of %d maximum"
    " allowed virtual interfaces\n", MAX_NPORTS,
    adapter->params.nports);
  adapter->params.nports = MAX_NPORTS;
 }






 pmask_nports = hweight32(adapter->params.vfres.pmask);
 if (pmask_nports < adapter->params.nports) {
  dev_warn(adapter->pdev_dev, "only using %d of %d provisioned"
    " virtual interfaces; limited by Port Access Rights"
    " mask %#x\n", pmask_nports, adapter->params.nports,
    adapter->params.vfres.pmask);
  adapter->params.nports = pmask_nports;
 }
 ethqsets = vfres->niqflint - 1 - (msi == MSI_MSI);
 if (vfres->nethctrl != ethqsets)
  ethqsets = min(vfres->nethctrl, ethqsets);
 if (vfres->neq < ethqsets*2)
  ethqsets = vfres->neq/2;
 if (ethqsets > MAX_ETH_QSETS)
  ethqsets = MAX_ETH_QSETS;
 adapter->sge.max_ethqsets = ethqsets;

 if (adapter->sge.max_ethqsets < adapter->params.nports) {
  dev_warn(adapter->pdev_dev, "only using %d of %d available"
    " virtual interfaces (too few Queue Sets)\n",
    adapter->sge.max_ethqsets, adapter->params.nports);
  adapter->params.nports = adapter->sge.max_ethqsets;
 }
}
