
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct knav_dma_desc {int * sw_data; } ;



__attribute__((used)) static void set_sw_data(int index, u32 data, struct knav_dma_desc *desc)
{

 desc->sw_data[index] = data;
}
