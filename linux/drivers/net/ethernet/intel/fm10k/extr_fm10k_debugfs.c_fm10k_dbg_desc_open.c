
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_operations {int dummy; } ;
struct seq_file {struct fm10k_ring* private; } ;
struct inode {struct fm10k_ring* i_private; } ;
struct fm10k_ring {struct fm10k_q_vector* q_vector; } ;
struct TYPE_2__ {struct fm10k_ring* ring; } ;
struct fm10k_q_vector {TYPE_1__ rx; } ;
struct file {scalar_t__ private_data; } ;


 struct seq_operations fm10k_dbg_rx_desc_seq_ops ;
 struct seq_operations fm10k_dbg_tx_desc_seq_ops ;
 int seq_open (struct file*,struct seq_operations const*) ;

__attribute__((used)) static int fm10k_dbg_desc_open(struct inode *inode, struct file *filep)
{
 struct fm10k_ring *ring = inode->i_private;
 struct fm10k_q_vector *q_vector = ring->q_vector;
 const struct seq_operations *desc_seq_ops;
 int err;

 if (ring < q_vector->rx.ring)
  desc_seq_ops = &fm10k_dbg_tx_desc_seq_ops;
 else
  desc_seq_ops = &fm10k_dbg_rx_desc_seq_ops;

 err = seq_open(filep, desc_seq_ops);
 if (err)
  return err;

 ((struct seq_file *)filep->private_data)->private = ring;

 return 0;
}
