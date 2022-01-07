
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __vxge_hw_fifo {int channel; } ;


 int vxge_hw_channel_dtr_count (int *) ;

u32 vxge_hw_fifo_free_txdl_count_get(struct __vxge_hw_fifo *fifoh)
{
 return vxge_hw_channel_dtr_count(&fifoh->channel);
}
