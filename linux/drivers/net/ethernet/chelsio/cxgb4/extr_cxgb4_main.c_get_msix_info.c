
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uld_msix_info {int dummy; } ;
struct TYPE_2__ {int lock; void* msix_bmap; } ;
struct adapter {unsigned int num_ofld_uld; unsigned int num_uld; struct uld_msix_info* msix_info_ulds; TYPE_1__ msix_bmap_ulds; } ;


 unsigned int BITS_TO_LONGS (unsigned int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int MAX_OFLD_QSETS ;
 scalar_t__ is_offload (struct adapter*) ;
 scalar_t__ is_pci_uld (struct adapter*) ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (struct uld_msix_info*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int get_msix_info(struct adapter *adap)
{
 struct uld_msix_info *msix_info;
 unsigned int max_ingq = 0;

 if (is_offload(adap))
  max_ingq += MAX_OFLD_QSETS * adap->num_ofld_uld;
 if (is_pci_uld(adap))
  max_ingq += MAX_OFLD_QSETS * adap->num_uld;

 if (!max_ingq)
  goto out;

 msix_info = kcalloc(max_ingq, sizeof(*msix_info), GFP_KERNEL);
 if (!msix_info)
  return -ENOMEM;

 adap->msix_bmap_ulds.msix_bmap = kcalloc(BITS_TO_LONGS(max_ingq),
       sizeof(long), GFP_KERNEL);
 if (!adap->msix_bmap_ulds.msix_bmap) {
  kfree(msix_info);
  return -ENOMEM;
 }
 spin_lock_init(&adap->msix_bmap_ulds.lock);
 adap->msix_info_ulds = msix_info;
out:
 return 0;
}
