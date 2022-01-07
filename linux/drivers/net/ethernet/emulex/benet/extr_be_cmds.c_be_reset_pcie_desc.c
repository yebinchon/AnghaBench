
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_pcie_res_desc {int sriov_state; int pf_state; int pf_type; int num_vfs; } ;


 int memset (struct be_pcie_res_desc*,int ,int) ;

__attribute__((used)) static void be_reset_pcie_desc(struct be_pcie_res_desc *pcie)
{
 memset(pcie, 0, sizeof(*pcie));
 pcie->sriov_state = 0xFF;
 pcie->pf_state = 0xFF;
 pcie->pf_type = 0xFF;
 pcie->num_vfs = 0xFFFF;
}
