
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int vec_idx; int affinity_mask; scalar_t__ cpu; } ;
struct aq_vec_s {scalar_t__ rx_rings; int ** ring; scalar_t__ tx_rings; TYPE_2__ aq_ring_param; int nic; int napi; struct aq_nic_s* aq_nic; } ;
struct aq_ring_s {int dummy; } ;
struct aq_nic_s {int dummy; } ;
struct TYPE_3__ {scalar_t__ base_cpu_number; } ;
struct aq_nic_cfg_s {unsigned int tcs; TYPE_1__ aq_rss; } ;


 int AQ_CFG_NAPI_WEIGHT ;
 unsigned int AQ_NIC_TCVEC2RING (int ,scalar_t__,unsigned int) ;
 size_t AQ_VEC_RX_ID ;
 size_t AQ_VEC_TX_ID ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int aq_nic_get_ndev (struct aq_nic_s*) ;
 int aq_nic_set_tx_ring (struct aq_nic_s*,unsigned int,struct aq_ring_s*) ;
 struct aq_ring_s* aq_ring_rx_alloc (int *,struct aq_nic_s*,unsigned int,struct aq_nic_cfg_s*) ;
 struct aq_ring_s* aq_ring_tx_alloc (int *,struct aq_nic_s*,unsigned int,struct aq_nic_cfg_s*) ;
 int aq_vec_free (struct aq_vec_s*) ;
 int aq_vec_poll ;
 int cpumask_set_cpu (scalar_t__,int *) ;
 struct aq_vec_s* kzalloc (int,int ) ;
 int netif_napi_add (int ,int *,int ,int ) ;

struct aq_vec_s *aq_vec_alloc(struct aq_nic_s *aq_nic, unsigned int idx,
         struct aq_nic_cfg_s *aq_nic_cfg)
{
 struct aq_vec_s *self = ((void*)0);
 struct aq_ring_s *ring = ((void*)0);
 unsigned int i = 0U;
 int err = 0;

 self = kzalloc(sizeof(*self), GFP_KERNEL);
 if (!self) {
  err = -ENOMEM;
  goto err_exit;
 }

 self->aq_nic = aq_nic;
 self->aq_ring_param.vec_idx = idx;
 self->aq_ring_param.cpu =
  idx + aq_nic_cfg->aq_rss.base_cpu_number;

 cpumask_set_cpu(self->aq_ring_param.cpu,
   &self->aq_ring_param.affinity_mask);

 self->tx_rings = 0;
 self->rx_rings = 0;

 netif_napi_add(aq_nic_get_ndev(aq_nic), &self->napi,
         aq_vec_poll, AQ_CFG_NAPI_WEIGHT);

 for (i = 0; i < aq_nic_cfg->tcs; ++i) {
  unsigned int idx_ring = AQ_NIC_TCVEC2RING(self->nic,
      self->tx_rings,
      self->aq_ring_param.vec_idx);

  ring = aq_ring_tx_alloc(&self->ring[i][AQ_VEC_TX_ID], aq_nic,
     idx_ring, aq_nic_cfg);
  if (!ring) {
   err = -ENOMEM;
   goto err_exit;
  }

  ++self->tx_rings;

  aq_nic_set_tx_ring(aq_nic, idx_ring, ring);

  ring = aq_ring_rx_alloc(&self->ring[i][AQ_VEC_RX_ID], aq_nic,
     idx_ring, aq_nic_cfg);
  if (!ring) {
   err = -ENOMEM;
   goto err_exit;
  }

  ++self->rx_rings;
 }

err_exit:
 if (err < 0) {
  aq_vec_free(self);
  self = ((void*)0);
 }
 return self;
}
