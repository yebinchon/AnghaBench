
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ef4_nic {TYPE_2__* type; int net_dev; } ;
struct TYPE_4__ {int len; int addr; } ;
struct TYPE_6__ {scalar_t__ index; scalar_t__ entries; TYPE_1__ buf; } ;
struct ef4_channel {int channel; TYPE_3__ eventq; struct ef4_nic* efx; } ;
typedef int ef4_oword_t ;
struct TYPE_5__ {int evq_ptr_tbl_base; } ;


 int EF4_POPULATE_OWORD_3 (int ,int ,int,int ,int ,int ,scalar_t__) ;
 int FRF_AZ_EVQ_BUF_BASE_ID ;
 int FRF_AZ_EVQ_EN ;
 int FRF_AZ_EVQ_SIZE ;
 int __ffs (scalar_t__) ;
 int ef4_init_special_buffer (struct ef4_nic*,TYPE_3__*) ;
 int ef4_writeo_table (struct ef4_nic*,int *,int ,int ) ;
 int hw ;
 int memset (int ,int,int ) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,int ,scalar_t__,scalar_t__) ;

int ef4_farch_ev_init(struct ef4_channel *channel)
{
 ef4_oword_t reg;
 struct ef4_nic *efx = channel->efx;

 netif_dbg(efx, hw, efx->net_dev,
    "channel %d event queue in special buffers %d-%d\n",
    channel->channel, channel->eventq.index,
    channel->eventq.index + channel->eventq.entries - 1);


 ef4_init_special_buffer(efx, &channel->eventq);


 memset(channel->eventq.buf.addr, 0xff, channel->eventq.buf.len);


 EF4_POPULATE_OWORD_3(reg,
        FRF_AZ_EVQ_EN, 1,
        FRF_AZ_EVQ_SIZE, __ffs(channel->eventq.entries),
        FRF_AZ_EVQ_BUF_BASE_ID, channel->eventq.index);
 ef4_writeo_table(efx, &reg, efx->type->evq_ptr_tbl_base,
    channel->channel);

 return 0;
}
