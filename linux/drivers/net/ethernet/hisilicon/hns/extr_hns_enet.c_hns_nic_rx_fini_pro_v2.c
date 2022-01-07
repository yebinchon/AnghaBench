
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_nic_ring_data {struct hnae_ring* ring; } ;
struct hnae_ring {TYPE_2__* q; scalar_t__ io_base; } ;
struct TYPE_4__ {TYPE_1__* handle; } ;
struct TYPE_3__ {scalar_t__ coal_adapt_en; } ;


 scalar_t__ RCB_REG_FBDNUM ;
 int hns_coal_rx_bdnum (struct hnae_ring*) ;
 int hns_nic_adpt_coalesce (struct hns_nic_ring_data*) ;
 int hns_update_rx_rate (struct hnae_ring*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static bool hns_nic_rx_fini_pro_v2(struct hns_nic_ring_data *ring_data)
{
 struct hnae_ring *ring = ring_data->ring;
 int num;

 hns_update_rx_rate(ring);
 num = readl_relaxed(ring->io_base + RCB_REG_FBDNUM);

 if (num <= hns_coal_rx_bdnum(ring)) {
  if (ring->q->handle->coal_adapt_en)
   hns_nic_adpt_coalesce(ring_data);

  return 1;
 }

 return 0;
}
