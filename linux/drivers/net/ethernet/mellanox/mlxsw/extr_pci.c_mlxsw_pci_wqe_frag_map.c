
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mlxsw_pci {struct pci_dev* pdev; } ;
typedef int dma_addr_t ;


 int EIO ;
 int dev_err_ratelimited (int *,char*) ;
 int mlxsw_pci_wqe_address_set (char*,int,int ) ;
 int mlxsw_pci_wqe_byte_count_set (char*,int,size_t) ;
 int pci_dma_mapping_error (struct pci_dev*,int ) ;
 int pci_map_single (struct pci_dev*,char*,size_t,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int mlxsw_pci_wqe_frag_map(struct mlxsw_pci *mlxsw_pci, char *wqe,
      int index, char *frag_data, size_t frag_len,
      int direction)
{
 struct pci_dev *pdev = mlxsw_pci->pdev;
 dma_addr_t mapaddr;

 mapaddr = pci_map_single(pdev, frag_data, frag_len, direction);
 if (unlikely(pci_dma_mapping_error(pdev, mapaddr))) {
  dev_err_ratelimited(&pdev->dev, "failed to dma map tx frag\n");
  return -EIO;
 }
 mlxsw_pci_wqe_address_set(wqe, index, mapaddr);
 mlxsw_pci_wqe_byte_count_set(wqe, index, frag_len);
 return 0;
}
