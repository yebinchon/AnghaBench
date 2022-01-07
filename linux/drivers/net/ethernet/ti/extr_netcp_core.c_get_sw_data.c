
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct knav_dma_desc {int * sw_data; } ;



__attribute__((used)) static u32 get_sw_data(int index, struct knav_dma_desc *desc)
{

 return desc->sw_data[index];
}
