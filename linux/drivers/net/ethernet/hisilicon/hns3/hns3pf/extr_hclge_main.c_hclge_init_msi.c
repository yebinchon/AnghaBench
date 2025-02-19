
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; scalar_t__ irq; } ;
struct hclge_dev {int num_msi; int num_msi_left; void* vector_irq; int * vector_status; scalar_t__ roce_base_msix_offset; scalar_t__ base_msi_vector; scalar_t__ roce_base_vector; struct pci_dev* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HCLGE_INVALID_VPORT ;
 int HNAE3_MIN_VECTOR_NUM ;
 int PCI_IRQ_MSI ;
 int PCI_IRQ_MSIX ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int,int) ;
 void* devm_kcalloc (int *,int,int,int ) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int ,int,int) ;
 int pci_free_irq_vectors (struct pci_dev*) ;

__attribute__((used)) static int hclge_init_msi(struct hclge_dev *hdev)
{
 struct pci_dev *pdev = hdev->pdev;
 int vectors;
 int i;

 vectors = pci_alloc_irq_vectors(pdev, HNAE3_MIN_VECTOR_NUM,
     hdev->num_msi,
     PCI_IRQ_MSI | PCI_IRQ_MSIX);
 if (vectors < 0) {
  dev_err(&pdev->dev,
   "failed(%d) to allocate MSI/MSI-X vectors\n",
   vectors);
  return vectors;
 }
 if (vectors < hdev->num_msi)
  dev_warn(&hdev->pdev->dev,
    "requested %d MSI/MSI-X, but allocated %d MSI/MSI-X\n",
    hdev->num_msi, vectors);

 hdev->num_msi = vectors;
 hdev->num_msi_left = vectors;

 hdev->base_msi_vector = pdev->irq;
 hdev->roce_base_vector = hdev->base_msi_vector +
    hdev->roce_base_msix_offset;

 hdev->vector_status = devm_kcalloc(&pdev->dev, hdev->num_msi,
        sizeof(u16), GFP_KERNEL);
 if (!hdev->vector_status) {
  pci_free_irq_vectors(pdev);
  return -ENOMEM;
 }

 for (i = 0; i < hdev->num_msi; i++)
  hdev->vector_status[i] = HCLGE_INVALID_VPORT;

 hdev->vector_irq = devm_kcalloc(&pdev->dev, hdev->num_msi,
     sizeof(int), GFP_KERNEL);
 if (!hdev->vector_irq) {
  pci_free_irq_vectors(pdev);
  return -ENOMEM;
 }

 return 0;
}
