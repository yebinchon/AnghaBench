
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bch_geometry {int auxiliary_size; } ;
struct gpmi_nand_data {int * raw_buffer; int * data_buffer_dma; int auxiliary_phys; int auxiliary_virt; struct bch_geometry bch_geometry; struct device* dev; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int kfree (int *) ;
 scalar_t__ virt_addr_valid (int ) ;

__attribute__((used)) static void gpmi_free_dma_buffer(struct gpmi_nand_data *this)
{
 struct device *dev = this->dev;
 struct bch_geometry *geo = &this->bch_geometry;

 if (this->auxiliary_virt && virt_addr_valid(this->auxiliary_virt))
  dma_free_coherent(dev, geo->auxiliary_size,
     this->auxiliary_virt,
     this->auxiliary_phys);
 kfree(this->data_buffer_dma);
 kfree(this->raw_buffer);

 this->data_buffer_dma = ((void*)0);
 this->raw_buffer = ((void*)0);
}
