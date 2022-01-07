
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct i40e_vsi {struct i40e_ring** tx_rings; } ;
struct i40e_tx_desc {int cmd_type_offset_bsz; int buffer_addr; } ;
struct i40e_tx_buffer {struct i40e_tx_desc* next_to_watch; void* raw_buf; int tx_flags; } ;
struct i40e_ring {size_t next_to_use; size_t count; int tail; struct i40e_tx_buffer* tx_bi; struct device* dev; } ;
struct i40e_pf {int dummy; } ;
struct i40e_fdir_filter {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int EAGAIN ;
 int ENOENT ;
 int I40E_DESC_UNUSED (struct i40e_ring*) ;
 int I40E_FDIR_MAX_RAW_PACKET_SIZE ;
 size_t I40E_FD_CLEAN_DELAY ;
 int I40E_TXD_CMD ;
 struct i40e_tx_desc* I40E_TX_DESC (struct i40e_ring*,size_t) ;
 int I40E_TX_DESC_CMD_DUMMY ;
 int I40E_TX_FLAGS_FD_SB ;
 int I40E_VSI_FDIR ;
 int build_ctob (int,int ,int ,int ) ;
 int cpu_to_le64 (int ) ;
 int dma_map_single (struct device*,int *,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_addr_set (struct i40e_tx_buffer*,int ,int ) ;
 int dma_unmap_len_set (struct i40e_tx_buffer*,int ,int ) ;
 int i40e_fdir (struct i40e_ring*,struct i40e_fdir_filter*,int) ;
 struct i40e_vsi* i40e_find_vsi_by_type (struct i40e_pf*,int ) ;
 int len ;
 int memset (struct i40e_tx_buffer*,int ,int) ;
 int msleep_interruptible (int) ;
 int wmb () ;
 int writel (size_t,int ) ;

__attribute__((used)) static int i40e_program_fdir_filter(struct i40e_fdir_filter *fdir_data,
        u8 *raw_packet, struct i40e_pf *pf,
        bool add)
{
 struct i40e_tx_buffer *tx_buf, *first;
 struct i40e_tx_desc *tx_desc;
 struct i40e_ring *tx_ring;
 struct i40e_vsi *vsi;
 struct device *dev;
 dma_addr_t dma;
 u32 td_cmd = 0;
 u16 i;


 vsi = i40e_find_vsi_by_type(pf, I40E_VSI_FDIR);
 if (!vsi)
  return -ENOENT;

 tx_ring = vsi->tx_rings[0];
 dev = tx_ring->dev;


 for (i = I40E_FD_CLEAN_DELAY; I40E_DESC_UNUSED(tx_ring) < 2; i--) {
  if (!i)
   return -EAGAIN;
  msleep_interruptible(1);
 }

 dma = dma_map_single(dev, raw_packet,
        I40E_FDIR_MAX_RAW_PACKET_SIZE, DMA_TO_DEVICE);
 if (dma_mapping_error(dev, dma))
  goto dma_fail;


 i = tx_ring->next_to_use;
 first = &tx_ring->tx_bi[i];
 i40e_fdir(tx_ring, fdir_data, add);


 i = tx_ring->next_to_use;
 tx_desc = I40E_TX_DESC(tx_ring, i);
 tx_buf = &tx_ring->tx_bi[i];

 tx_ring->next_to_use = ((i + 1) < tx_ring->count) ? i + 1 : 0;

 memset(tx_buf, 0, sizeof(struct i40e_tx_buffer));


 dma_unmap_len_set(tx_buf, len, I40E_FDIR_MAX_RAW_PACKET_SIZE);
 dma_unmap_addr_set(tx_buf, dma, dma);

 tx_desc->buffer_addr = cpu_to_le64(dma);
 td_cmd = I40E_TXD_CMD | I40E_TX_DESC_CMD_DUMMY;

 tx_buf->tx_flags = I40E_TX_FLAGS_FD_SB;
 tx_buf->raw_buf = (void *)raw_packet;

 tx_desc->cmd_type_offset_bsz =
  build_ctob(td_cmd, 0, I40E_FDIR_MAX_RAW_PACKET_SIZE, 0);




 wmb();


 first->next_to_watch = tx_desc;

 writel(tx_ring->next_to_use, tx_ring->tail);
 return 0;

dma_fail:
 return -1;
}
