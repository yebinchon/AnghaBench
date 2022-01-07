
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mlxsw_pci {struct pci_dev* pdev; } ;
typedef int dma_addr_t ;


 int mlxsw_pci_wqe_address_get (char*,int) ;
 size_t mlxsw_pci_wqe_byte_count_get (char*,int) ;
 int pci_unmap_single (struct pci_dev*,int ,size_t,int) ;

__attribute__((used)) static void mlxsw_pci_wqe_frag_unmap(struct mlxsw_pci *mlxsw_pci, char *wqe,
         int index, int direction)
{
 struct pci_dev *pdev = mlxsw_pci->pdev;
 size_t frag_len = mlxsw_pci_wqe_byte_count_get(wqe, index);
 dma_addr_t mapaddr = mlxsw_pci_wqe_address_get(wqe, index);

 if (!frag_len)
  return;
 pci_unmap_single(pdev, mapaddr, frag_len, direction);
}
