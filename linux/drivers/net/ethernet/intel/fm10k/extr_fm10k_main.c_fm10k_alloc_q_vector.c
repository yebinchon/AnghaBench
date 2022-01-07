
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fm10k_ring {unsigned int queue_index; int count; struct fm10k_q_vector* q_vector; int l2_accel; int netdev; int * dev; } ;
struct TYPE_9__ {unsigned int count; int itr_scale; int itr; struct fm10k_ring* ring; } ;
struct TYPE_6__ {unsigned int count; int itr_scale; int itr; int work_limit; struct fm10k_ring* ring; } ;
struct fm10k_q_vector {unsigned int v_idx; TYPE_4__ rx; TYPE_1__ tx; struct fm10k_ring* ring; struct fm10k_intfc* interface; int napi; } ;
struct TYPE_7__ {int itr_scale; } ;
struct TYPE_8__ {TYPE_2__ mac; } ;
struct fm10k_intfc {struct fm10k_ring** rx_ring; int rx_ring_count; int l2_accel; int netdev; TYPE_5__* pdev; TYPE_3__ hw; int rx_itr; struct fm10k_ring** tx_ring; int tx_ring_count; int tx_itr; struct fm10k_q_vector** q_vector; } ;
struct TYPE_10__ {int dev; } ;


 int ENOMEM ;
 int FM10K_DEFAULT_TX_WORK ;
 int GFP_KERNEL ;
 int NAPI_POLL_WEIGHT ;
 int fm10k_dbg_q_vector_init (struct fm10k_q_vector*) ;
 int fm10k_poll ;
 struct fm10k_q_vector* kzalloc (int ,int ) ;
 int netif_napi_add (int ,int *,int ,int ) ;
 int rcu_assign_pointer (int ,int ) ;
 int struct_size (struct fm10k_q_vector*,struct fm10k_ring*,int) ;

__attribute__((used)) static int fm10k_alloc_q_vector(struct fm10k_intfc *interface,
    unsigned int v_count, unsigned int v_idx,
    unsigned int txr_count, unsigned int txr_idx,
    unsigned int rxr_count, unsigned int rxr_idx)
{
 struct fm10k_q_vector *q_vector;
 struct fm10k_ring *ring;
 int ring_count;

 ring_count = txr_count + rxr_count;


 q_vector = kzalloc(struct_size(q_vector, ring, ring_count), GFP_KERNEL);
 if (!q_vector)
  return -ENOMEM;


 netif_napi_add(interface->netdev, &q_vector->napi,
         fm10k_poll, NAPI_POLL_WEIGHT);


 interface->q_vector[v_idx] = q_vector;
 q_vector->interface = interface;
 q_vector->v_idx = v_idx;


 ring = q_vector->ring;


 q_vector->tx.ring = ring;
 q_vector->tx.work_limit = FM10K_DEFAULT_TX_WORK;
 q_vector->tx.itr = interface->tx_itr;
 q_vector->tx.itr_scale = interface->hw.mac.itr_scale;
 q_vector->tx.count = txr_count;

 while (txr_count) {

  ring->dev = &interface->pdev->dev;
  ring->netdev = interface->netdev;


  ring->q_vector = q_vector;


  ring->count = interface->tx_ring_count;
  ring->queue_index = txr_idx;


  interface->tx_ring[txr_idx] = ring;


  txr_count--;
  txr_idx += v_count;


  ring++;
 }


 q_vector->rx.ring = ring;
 q_vector->rx.itr = interface->rx_itr;
 q_vector->rx.itr_scale = interface->hw.mac.itr_scale;
 q_vector->rx.count = rxr_count;

 while (rxr_count) {

  ring->dev = &interface->pdev->dev;
  ring->netdev = interface->netdev;
  rcu_assign_pointer(ring->l2_accel, interface->l2_accel);


  ring->q_vector = q_vector;


  ring->count = interface->rx_ring_count;
  ring->queue_index = rxr_idx;


  interface->rx_ring[rxr_idx] = ring;


  rxr_count--;
  rxr_idx += v_count;


  ring++;
 }

 fm10k_dbg_q_vector_init(q_vector);

 return 0;
}
