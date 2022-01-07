
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpmi_nand_data {struct dma_chan** dma_chans; } ;
struct dma_chan {int dummy; } ;



__attribute__((used)) static struct dma_chan *get_dma_chan(struct gpmi_nand_data *this)
{

 return this->dma_chans[0];
}
