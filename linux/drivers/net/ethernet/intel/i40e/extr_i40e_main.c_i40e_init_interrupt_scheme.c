
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct i40e_pf {int flags; TYPE_2__* irq_pile; TYPE_1__* pdev; } ;
struct i40e_lump_tracking {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {int num_entries; scalar_t__ search_hint; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I40E_FLAG_DCB_CAPABLE ;
 int I40E_FLAG_DCB_ENABLED ;
 int I40E_FLAG_FD_ATR_ENABLED ;
 int I40E_FLAG_FD_SB_ENABLED ;
 int I40E_FLAG_FD_SB_INACTIVE ;
 int I40E_FLAG_IWARP_ENABLED ;
 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_FLAG_MSI_ENABLED ;
 int I40E_FLAG_RSS_ENABLED ;
 int I40E_FLAG_SRIOV_ENABLED ;
 int I40E_FLAG_VMDQ_ENABLED ;
 scalar_t__ I40E_PILE_VALID_BIT ;
 int dev_info (int *,char*,...) ;
 int i40e_determine_queue_usage (struct i40e_pf*) ;
 int i40e_get_lump (struct i40e_pf*,TYPE_2__*,int,scalar_t__) ;
 int i40e_init_msix (struct i40e_pf*) ;
 TYPE_2__* kzalloc (int,int ) ;
 int pci_enable_msi (TYPE_1__*) ;

__attribute__((used)) static int i40e_init_interrupt_scheme(struct i40e_pf *pf)
{
 int vectors = 0;
 ssize_t size;

 if (pf->flags & I40E_FLAG_MSIX_ENABLED) {
  vectors = i40e_init_msix(pf);
  if (vectors < 0) {
   pf->flags &= ~(I40E_FLAG_MSIX_ENABLED |
           I40E_FLAG_IWARP_ENABLED |
           I40E_FLAG_RSS_ENABLED |
           I40E_FLAG_DCB_CAPABLE |
           I40E_FLAG_DCB_ENABLED |
           I40E_FLAG_SRIOV_ENABLED |
           I40E_FLAG_FD_SB_ENABLED |
           I40E_FLAG_FD_ATR_ENABLED |
           I40E_FLAG_VMDQ_ENABLED);
   pf->flags |= I40E_FLAG_FD_SB_INACTIVE;


   i40e_determine_queue_usage(pf);
  }
 }

 if (!(pf->flags & I40E_FLAG_MSIX_ENABLED) &&
     (pf->flags & I40E_FLAG_MSI_ENABLED)) {
  dev_info(&pf->pdev->dev, "MSI-X not available, trying MSI\n");
  vectors = pci_enable_msi(pf->pdev);
  if (vectors < 0) {
   dev_info(&pf->pdev->dev, "MSI init failed - %d\n",
     vectors);
   pf->flags &= ~I40E_FLAG_MSI_ENABLED;
  }
  vectors = 1;
 }

 if (!(pf->flags & (I40E_FLAG_MSIX_ENABLED | I40E_FLAG_MSI_ENABLED)))
  dev_info(&pf->pdev->dev, "MSI-X and MSI not available, falling back to Legacy IRQ\n");


 size = sizeof(struct i40e_lump_tracking) + (sizeof(u16) * vectors);
 pf->irq_pile = kzalloc(size, GFP_KERNEL);
 if (!pf->irq_pile)
  return -ENOMEM;

 pf->irq_pile->num_entries = vectors;
 pf->irq_pile->search_hint = 0;


 (void)i40e_get_lump(pf, pf->irq_pile, 1, I40E_PILE_VALID_BIT - 1);

 return 0;
}
