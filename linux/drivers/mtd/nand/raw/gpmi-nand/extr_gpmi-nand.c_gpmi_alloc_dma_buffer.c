
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {scalar_t__ oobsize; scalar_t__ writesize; } ;
struct bch_geometry {int auxiliary_size; } ;
struct gpmi_nand_data {void* raw_buffer; int auxiliary_virt; int auxiliary_phys; int * data_buffer_dma; int nand; struct device* dev; struct bch_geometry bch_geometry; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 int dma_alloc_coherent (struct device*,int ,int *,int) ;
 int gpmi_free_dma_buffer (struct gpmi_nand_data*) ;
 void* kzalloc (scalar_t__,int) ;
 struct mtd_info* nand_to_mtd (int *) ;

__attribute__((used)) static int gpmi_alloc_dma_buffer(struct gpmi_nand_data *this)
{
 struct bch_geometry *geo = &this->bch_geometry;
 struct device *dev = this->dev;
 struct mtd_info *mtd = nand_to_mtd(&this->nand);
 this->data_buffer_dma = kzalloc(mtd->writesize ?: PAGE_SIZE,
     GFP_DMA | GFP_KERNEL);
 if (this->data_buffer_dma == ((void*)0))
  goto error_alloc;

 this->auxiliary_virt = dma_alloc_coherent(dev, geo->auxiliary_size,
     &this->auxiliary_phys, GFP_DMA);
 if (!this->auxiliary_virt)
  goto error_alloc;

 this->raw_buffer = kzalloc((mtd->writesize ?: PAGE_SIZE) + mtd->oobsize, GFP_KERNEL);
 if (!this->raw_buffer)
  goto error_alloc;

 return 0;

error_alloc:
 gpmi_free_dma_buffer(this);
 return -ENOMEM;
}
