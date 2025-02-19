
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cnic_local {int (* setup_pgtbl ) (struct cnic_dev*,struct cnic_dma*) ;} ;
struct cnic_dma {int num_pages; int pgtbl_size; int * pgtbl; int pgtbl_map; int ** pg_arr; int * pg_map_arr; } ;
struct cnic_dev {TYPE_1__* pcidev; struct cnic_local* cnic_priv; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int CNIC_PAGE_SIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int cnic_free_dma (struct cnic_dev*,struct cnic_dma*) ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int ** kzalloc (int,int ) ;
 int stub1 (struct cnic_dev*,struct cnic_dma*) ;

__attribute__((used)) static int cnic_alloc_dma(struct cnic_dev *dev, struct cnic_dma *dma,
     int pages, int use_pg_tbl)
{
 int i, size;
 struct cnic_local *cp = dev->cnic_priv;

 size = pages * (sizeof(void *) + sizeof(dma_addr_t));
 dma->pg_arr = kzalloc(size, GFP_ATOMIC);
 if (dma->pg_arr == ((void*)0))
  return -ENOMEM;

 dma->pg_map_arr = (dma_addr_t *) (dma->pg_arr + pages);
 dma->num_pages = pages;

 for (i = 0; i < pages; i++) {
  dma->pg_arr[i] = dma_alloc_coherent(&dev->pcidev->dev,
          CNIC_PAGE_SIZE,
          &dma->pg_map_arr[i],
          GFP_ATOMIC);
  if (dma->pg_arr[i] == ((void*)0))
   goto error;
 }
 if (!use_pg_tbl)
  return 0;

 dma->pgtbl_size = ((pages * 8) + CNIC_PAGE_SIZE - 1) &
     ~(CNIC_PAGE_SIZE - 1);
 dma->pgtbl = dma_alloc_coherent(&dev->pcidev->dev, dma->pgtbl_size,
     &dma->pgtbl_map, GFP_ATOMIC);
 if (dma->pgtbl == ((void*)0))
  goto error;

 cp->setup_pgtbl(dev, dma);

 return 0;

error:
 cnic_free_dma(dev, dma);
 return -ENOMEM;
}
