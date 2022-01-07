
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
struct rcar_drif_sdr {size_t produced; int num_cur_ch; unsigned int hwbuf_size; TYPE_1__* fmt; int dma_lock; int vb_queue; } ;
struct rcar_drif_hwbuf {int status; int addr; } ;
struct TYPE_8__ {int timestamp; } ;
struct TYPE_7__ {size_t sequence; TYPE_3__ vb2_buf; int field; } ;
struct rcar_drif_frame_buf {TYPE_2__ vb; } ;
struct rcar_drif {scalar_t__ num; struct rcar_drif_hwbuf* buf; struct rcar_drif_sdr* sdr; } ;
struct TYPE_6__ {int buffersize; } ;


 int RCAR_DRIF_BUF_DONE ;
 int RCAR_DRIF_BUF_OVERFLOW ;
 int RCAR_DRIF_MAX_CHANNEL ;
 size_t RCAR_DRIF_NUM_HWBUFS ;
 int V4L2_FIELD_NONE ;
 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int ktime_get_ns () ;
 int memcpy (scalar_t__,int ,unsigned int) ;
 int rcar_drif_bufs_clear (struct rcar_drif_hwbuf**,int) ;
 int rcar_drif_bufs_done (struct rcar_drif_hwbuf**) ;
 scalar_t__ rcar_drif_bufs_overflow (struct rcar_drif_hwbuf**) ;
 int rcar_drif_channel_complete (struct rcar_drif*,size_t) ;
 struct rcar_drif_frame_buf* rcar_drif_get_fbuf (struct rcar_drif_sdr*) ;
 int rdrif_dbg (struct rcar_drif_sdr*,char*,scalar_t__,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct rcar_drif_hwbuf* to_rcar_drif_buf_pair (struct rcar_drif_sdr*,scalar_t__,size_t) ;
 int vb2_buffer_done (TYPE_3__*,int ) ;
 int vb2_is_streaming (int *) ;
 scalar_t__ vb2_plane_vaddr (TYPE_3__*,int ) ;
 int vb2_set_plane_payload (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void rcar_drif_dma_complete(void *dma_async_param)
{
 struct rcar_drif *ch = dma_async_param;
 struct rcar_drif_sdr *sdr = ch->sdr;
 struct rcar_drif_hwbuf *buf[RCAR_DRIF_MAX_CHANNEL];
 struct rcar_drif_frame_buf *fbuf;
 bool overflow = 0;
 u32 idx, produced;
 unsigned int i;

 spin_lock(&sdr->dma_lock);


 if (!vb2_is_streaming(&sdr->vb_queue)) {
  spin_unlock(&sdr->dma_lock);
  return;
 }

 idx = sdr->produced % RCAR_DRIF_NUM_HWBUFS;
 rcar_drif_channel_complete(ch, idx);

 if (sdr->num_cur_ch == RCAR_DRIF_MAX_CHANNEL) {
  buf[0] = ch->num ? to_rcar_drif_buf_pair(sdr, ch->num, idx) :
    &ch->buf[idx];
  buf[1] = ch->num ? &ch->buf[idx] :
    to_rcar_drif_buf_pair(sdr, ch->num, idx);


  if (!rcar_drif_bufs_done(buf)) {
   spin_unlock(&sdr->dma_lock);
   return;
  }


  rcar_drif_bufs_clear(buf, RCAR_DRIF_BUF_DONE);

  if (rcar_drif_bufs_overflow(buf)) {
   overflow = 1;

   rcar_drif_bufs_clear(buf, RCAR_DRIF_BUF_OVERFLOW);
  }
 } else {
  buf[0] = &ch->buf[idx];
  if (buf[0]->status & RCAR_DRIF_BUF_OVERFLOW) {
   overflow = 1;

   buf[0]->status &= ~RCAR_DRIF_BUF_OVERFLOW;
  }
 }


 produced = sdr->produced++;
 spin_unlock(&sdr->dma_lock);

 rdrif_dbg(sdr, "ch%u: prod %u\n", ch->num, produced);


 fbuf = rcar_drif_get_fbuf(sdr);
 if (!fbuf)
  return;

 for (i = 0; i < RCAR_DRIF_MAX_CHANNEL; i++)
  memcpy(vb2_plane_vaddr(&fbuf->vb.vb2_buf, 0) +
         i * sdr->hwbuf_size, buf[i]->addr, sdr->hwbuf_size);

 fbuf->vb.field = V4L2_FIELD_NONE;
 fbuf->vb.sequence = produced;
 fbuf->vb.vb2_buf.timestamp = ktime_get_ns();
 vb2_set_plane_payload(&fbuf->vb.vb2_buf, 0, sdr->fmt->buffersize);


 vb2_buffer_done(&fbuf->vb.vb2_buf,
   overflow ? VB2_BUF_STATE_ERROR : VB2_BUF_STATE_DONE);
}
