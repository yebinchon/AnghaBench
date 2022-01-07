
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hns_nic_ring_data {struct hnae_ring* ring; } ;
struct hnae_ring {TYPE_4__* q; scalar_t__ io_base; } ;
struct TYPE_8__ {TYPE_3__* handle; } ;
struct TYPE_7__ {TYPE_2__* dev; scalar_t__ coal_adapt_en; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* toggle_ring_irq ) (struct hnae_ring*,int) ;} ;


 scalar_t__ RCB_REG_FBDNUM ;
 int hns_coal_rx_bdnum (struct hnae_ring*) ;
 int hns_nic_adpt_coalesce (struct hns_nic_ring_data*) ;
 int hns_update_rx_rate (struct hnae_ring*) ;
 int readl_relaxed (scalar_t__) ;
 int stub1 (struct hnae_ring*,int) ;
 int stub2 (struct hnae_ring*,int) ;

__attribute__((used)) static bool hns_nic_rx_fini_pro(struct hns_nic_ring_data *ring_data)
{
 struct hnae_ring *ring = ring_data->ring;
 int num = 0;
 bool rx_stopped;

 hns_update_rx_rate(ring);


 ring_data->ring->q->handle->dev->ops->toggle_ring_irq(ring, 0);
 num = readl_relaxed(ring->io_base + RCB_REG_FBDNUM);

 if (num <= hns_coal_rx_bdnum(ring)) {
  if (ring->q->handle->coal_adapt_en)
   hns_nic_adpt_coalesce(ring_data);

  rx_stopped = 1;
 } else {
  ring_data->ring->q->handle->dev->ops->toggle_ring_irq(
   ring_data->ring, 1);

  rx_stopped = 0;
 }

 return rx_stopped;
}
