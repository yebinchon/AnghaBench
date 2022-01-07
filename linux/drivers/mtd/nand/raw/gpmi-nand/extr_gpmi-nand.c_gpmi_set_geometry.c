
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmi_nand_data {int dev; } ;


 int bch_set_geometry (struct gpmi_nand_data*) ;
 int dev_err (int ,char*,int) ;
 int gpmi_alloc_dma_buffer (struct gpmi_nand_data*) ;
 int gpmi_free_dma_buffer (struct gpmi_nand_data*) ;

__attribute__((used)) static int gpmi_set_geometry(struct gpmi_nand_data *this)
{
 int ret;


 gpmi_free_dma_buffer(this);


 ret = bch_set_geometry(this);
 if (ret) {
  dev_err(this->dev, "Error setting BCH geometry : %d\n", ret);
  return ret;
 }


 return gpmi_alloc_dma_buffer(this);
}
