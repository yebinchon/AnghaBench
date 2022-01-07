
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_node {struct device_node* parent; } ;


 int DMA_BURST16 ;
 int DMA_BURST32 ;
 int of_getintprop_default (struct device_node*,char*,int) ;

__attribute__((used)) static u8 qec_get_burst(struct device_node *dp)
{
 u8 bsizes, bsizes_more;




 bsizes = of_getintprop_default(dp, "burst-sizes", 0xff);
 bsizes &= 0xff;
 bsizes_more = of_getintprop_default(dp->parent, "burst-sizes", 0xff);

 if (bsizes_more != 0xff)
  bsizes &= bsizes_more;
 if (bsizes == 0xff || (bsizes & DMA_BURST16) == 0 ||
     (bsizes & DMA_BURST32)==0)
  bsizes = (DMA_BURST32 - 1);

 return bsizes;
}
