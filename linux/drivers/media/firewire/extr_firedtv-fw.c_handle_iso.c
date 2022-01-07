
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_iso_context {int dummy; } ;
struct firedtv {int device; int demux; struct fdtv_ir_context* ir_context; } ;
struct fdtv_ir_context {int current_packet; char** pages; int context; } ;
typedef int __be32 ;


 scalar_t__ CIP_HEADER_SIZE ;
 int MAX_PACKET_SIZE ;
 scalar_t__ MPEG2_TS_HEADER_SIZE ;
 int MPEG2_TS_SOURCE_PACKET_SIZE ;
 int N_PACKETS ;
 int PACKETS_PER_PAGE ;
 int be32_to_cpup (int *) ;
 int dev_err (int ,char*,...) ;
 int dvb_dmx_swfilter_packets (int *,char*,int) ;
 int fw_iso_context_queue_flush (int ) ;
 int queue_iso (struct fdtv_ir_context*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void handle_iso(struct fw_iso_context *context, u32 cycle,
         size_t header_length, void *header, void *data)
{
 struct firedtv *fdtv = data;
 struct fdtv_ir_context *ctx = fdtv->ir_context;
 __be32 *h, *h_end;
 int length, err, i = ctx->current_packet;
 char *p, *p_end;

 for (h = header, h_end = h + header_length / 4; h < h_end; h++) {
  length = be32_to_cpup(h) >> 16;
  if (unlikely(length > MAX_PACKET_SIZE)) {
   dev_err(fdtv->device, "length = %d\n", length);
   length = MAX_PACKET_SIZE;
  }

  p = ctx->pages[i / PACKETS_PER_PAGE]
    + (i % PACKETS_PER_PAGE) * MAX_PACKET_SIZE;
  p_end = p + length;

  for (p += CIP_HEADER_SIZE + MPEG2_TS_HEADER_SIZE; p < p_end;
       p += MPEG2_TS_SOURCE_PACKET_SIZE)
   dvb_dmx_swfilter_packets(&fdtv->demux, p, 1);

  err = queue_iso(ctx, i);
  if (unlikely(err))
   dev_err(fdtv->device, "requeue failed\n");

  i = (i + 1) & (N_PACKETS - 1);
 }
 fw_iso_context_queue_flush(ctx->context);
 ctx->current_packet = i;
}
