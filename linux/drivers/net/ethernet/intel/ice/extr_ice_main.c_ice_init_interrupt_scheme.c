
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ice_pf {int num_avail_sw_msix; TYPE_2__* irq_tracker; TYPE_1__* pdev; } ;
struct TYPE_4__ {int num_entries; int end; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* devm_kzalloc (int *,int,int ) ;
 int ice_dis_msix (struct ice_pf*) ;
 int ice_ena_msix_range (struct ice_pf*) ;

__attribute__((used)) static int ice_init_interrupt_scheme(struct ice_pf *pf)
{
 int vectors;

 vectors = ice_ena_msix_range(pf);

 if (vectors < 0)
  return vectors;


 pf->irq_tracker =
  devm_kzalloc(&pf->pdev->dev, sizeof(*pf->irq_tracker) +
        (sizeof(u16) * vectors), GFP_KERNEL);
 if (!pf->irq_tracker) {
  ice_dis_msix(pf);
  return -ENOMEM;
 }


 pf->num_avail_sw_msix = vectors;
 pf->irq_tracker->num_entries = vectors;
 pf->irq_tracker->end = pf->irq_tracker->num_entries;

 return 0;
}
