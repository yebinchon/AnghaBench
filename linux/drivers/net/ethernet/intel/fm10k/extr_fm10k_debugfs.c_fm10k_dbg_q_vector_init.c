
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fm10k_ring {int queue_index; } ;
struct TYPE_4__ {int count; struct fm10k_ring* ring; } ;
struct TYPE_3__ {int count; struct fm10k_ring* ring; } ;
struct fm10k_q_vector {int v_idx; int dbg_q_vector; TYPE_2__ rx; TYPE_1__ tx; struct fm10k_intfc* interface; } ;
struct fm10k_intfc {int dbg_intfc; } ;
typedef int name ;


 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct fm10k_ring*,int *) ;
 int fm10k_dbg_desc_fops ;
 int snprintf (char*,int,char*,int) ;

void fm10k_dbg_q_vector_init(struct fm10k_q_vector *q_vector)
{
 struct fm10k_intfc *interface = q_vector->interface;
 char name[16];
 int i;

 if (!interface->dbg_intfc)
  return;


 snprintf(name, sizeof(name), "q_vector.%03d", q_vector->v_idx);

 q_vector->dbg_q_vector = debugfs_create_dir(name, interface->dbg_intfc);


 for (i = 0; i < q_vector->tx.count; i++) {
  struct fm10k_ring *ring = &q_vector->tx.ring[i];

  snprintf(name, sizeof(name), "tx_ring.%03d", ring->queue_index);

  debugfs_create_file(name, 0600,
        q_vector->dbg_q_vector, ring,
        &fm10k_dbg_desc_fops);
 }


 for (i = 0; i < q_vector->rx.count; i++) {
  struct fm10k_ring *ring = &q_vector->rx.ring[i];

  snprintf(name, sizeof(name), "rx_ring.%03d", ring->queue_index);

  debugfs_create_file(name, 0600,
        q_vector->dbg_q_vector, ring,
        &fm10k_dbg_desc_fops);
 }
}
