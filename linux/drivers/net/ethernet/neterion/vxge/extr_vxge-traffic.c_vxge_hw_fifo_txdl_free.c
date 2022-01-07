
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __vxge_hw_channel {int dummy; } ;
struct __vxge_hw_fifo {struct __vxge_hw_channel channel; } ;


 int vxge_hw_channel_dtr_free (struct __vxge_hw_channel*,void*) ;

void vxge_hw_fifo_txdl_free(struct __vxge_hw_fifo *fifo, void *txdlh)
{
 struct __vxge_hw_channel *channel;

 channel = &fifo->channel;

 vxge_hw_channel_dtr_free(channel, txdlh);
}
