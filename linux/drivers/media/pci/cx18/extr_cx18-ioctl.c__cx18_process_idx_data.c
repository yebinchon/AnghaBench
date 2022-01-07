
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct v4l2_enc_idx_entry {int offset; int pts; int length; int flags; scalar_t__* reserved; } ;
struct v4l2_enc_idx {size_t entries; struct v4l2_enc_idx_entry* entry; } ;
struct cx18_enc_idx_entry {int flags; int length; int pts_low; int pts_high; int offset_low; int offset_high; } ;
struct cx18_buffer {int bytesused; int readpos; int * buf; } ;


 size_t V4L2_ENC_IDX_ENTRIES ;
 int V4L2_ENC_IDX_FRAME_B ;
 int V4L2_ENC_IDX_FRAME_I ;
 int V4L2_ENC_IDX_FRAME_P ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int _cx18_process_idx_data(struct cx18_buffer *buf,
      struct v4l2_enc_idx *idx)
{
 int consumed, remaining;
 struct v4l2_enc_idx_entry *e_idx;
 struct cx18_enc_idx_entry *e_buf;


 const int mapping[8] = {
  -1, V4L2_ENC_IDX_FRAME_I, V4L2_ENC_IDX_FRAME_P,
  -1, V4L2_ENC_IDX_FRAME_B, -1, -1, -1
 };






 remaining = buf->bytesused - buf->readpos;
 consumed = 0;
 e_idx = &idx->entry[idx->entries];
 e_buf = (struct cx18_enc_idx_entry *) &buf->buf[buf->readpos];

 while (remaining >= sizeof(struct cx18_enc_idx_entry) &&
        idx->entries < V4L2_ENC_IDX_ENTRIES) {

  e_idx->offset = (((u64) le32_to_cpu(e_buf->offset_high)) << 32)
    | le32_to_cpu(e_buf->offset_low);

  e_idx->pts = (((u64) (le32_to_cpu(e_buf->pts_high) & 1)) << 32)
        | le32_to_cpu(e_buf->pts_low);

  e_idx->length = le32_to_cpu(e_buf->length);

  e_idx->flags = mapping[le32_to_cpu(e_buf->flags) & 0x7];

  e_idx->reserved[0] = 0;
  e_idx->reserved[1] = 0;

  idx->entries++;
  e_idx = &idx->entry[idx->entries];
  e_buf++;

  remaining -= sizeof(struct cx18_enc_idx_entry);
  consumed += sizeof(struct cx18_enc_idx_entry);
 }


 if (remaining > 0 && remaining < sizeof(struct cx18_enc_idx_entry))
  consumed += remaining;

 buf->readpos += consumed;
 return consumed;
}
