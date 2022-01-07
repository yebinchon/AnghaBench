
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct i40e_vsi {TYPE_1__* back; } ;
struct i40e_tx_desc {int cmd_type_offset_bsz; scalar_t__ buffer_addr; } ;
struct i40e_tx_buffer {int tx_flags; struct i40e_tx_desc* next_to_watch; int * raw_buf; } ;
struct i40e_ring {size_t next_to_clean; TYPE_2__* q_vector; scalar_t__ count; struct i40e_tx_buffer* tx_bi; int dev; struct i40e_vsi* vsi; } ;
struct TYPE_4__ {int v_idx; } ;
struct TYPE_3__ {int flags; } ;


 int DMA_TO_DEVICE ;
 int I40E_FLAG_MSIX_ENABLED ;
 struct i40e_tx_desc* I40E_TX_DESC (struct i40e_ring*,size_t) ;
 int I40E_TX_DESC_DTYPE_DESC_DONE ;
 int I40E_TX_FLAGS_FD_SB ;
 int cpu_to_le64 (int ) ;
 int dma ;
 int dma_unmap_addr (struct i40e_tx_buffer*,int ) ;
 int dma_unmap_len (struct i40e_tx_buffer*,int ) ;
 int dma_unmap_len_set (struct i40e_tx_buffer*,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int i40e_irq_dynamic_enable (struct i40e_vsi*,int ) ;
 int kfree (int *) ;
 int len ;
 scalar_t__ likely (int) ;
 int smp_rmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool i40e_clean_fdir_tx_irq(struct i40e_ring *tx_ring, int budget)
{
 struct i40e_vsi *vsi = tx_ring->vsi;
 u16 i = tx_ring->next_to_clean;
 struct i40e_tx_buffer *tx_buf;
 struct i40e_tx_desc *tx_desc;

 tx_buf = &tx_ring->tx_bi[i];
 tx_desc = I40E_TX_DESC(tx_ring, i);
 i -= tx_ring->count;

 do {
  struct i40e_tx_desc *eop_desc = tx_buf->next_to_watch;


  if (!eop_desc)
   break;


  smp_rmb();


  if (!(eop_desc->cmd_type_offset_bsz &
        cpu_to_le64(I40E_TX_DESC_DTYPE_DESC_DONE)))
   break;


  tx_buf->next_to_watch = ((void*)0);

  tx_desc->buffer_addr = 0;
  tx_desc->cmd_type_offset_bsz = 0;

  tx_buf++;
  tx_desc++;
  i++;
  if (unlikely(!i)) {
   i -= tx_ring->count;
   tx_buf = tx_ring->tx_bi;
   tx_desc = I40E_TX_DESC(tx_ring, 0);
  }

  dma_unmap_single(tx_ring->dev,
     dma_unmap_addr(tx_buf, dma),
     dma_unmap_len(tx_buf, len),
     DMA_TO_DEVICE);
  if (tx_buf->tx_flags & I40E_TX_FLAGS_FD_SB)
   kfree(tx_buf->raw_buf);

  tx_buf->raw_buf = ((void*)0);
  tx_buf->tx_flags = 0;
  tx_buf->next_to_watch = ((void*)0);
  dma_unmap_len_set(tx_buf, len, 0);
  tx_desc->buffer_addr = 0;
  tx_desc->cmd_type_offset_bsz = 0;


  tx_buf++;
  tx_desc++;
  i++;
  if (unlikely(!i)) {
   i -= tx_ring->count;
   tx_buf = tx_ring->tx_bi;
   tx_desc = I40E_TX_DESC(tx_ring, 0);
  }


  budget--;
 } while (likely(budget));

 i += tx_ring->count;
 tx_ring->next_to_clean = i;

 if (vsi->back->flags & I40E_FLAG_MSIX_ENABLED)
  i40e_irq_dynamic_enable(vsi, tx_ring->q_vector->v_idx);

 return budget > 0;
}
