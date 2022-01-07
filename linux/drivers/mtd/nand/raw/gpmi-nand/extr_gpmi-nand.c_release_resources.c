
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmi_nand_data {int dummy; } ;


 int release_dma_channels (struct gpmi_nand_data*) ;

__attribute__((used)) static void release_resources(struct gpmi_nand_data *this)
{
 release_dma_channels(this);
}
