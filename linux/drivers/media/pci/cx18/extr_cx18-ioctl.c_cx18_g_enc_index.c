
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_enc_idx {scalar_t__ entries; int entries_cap; int reserved; } ;
struct file {int dummy; } ;
struct cx18_stream {int buffers; int bufs_per_mdl; int buf_size; int q_free; int q_full; } ;
struct cx18_mdl {scalar_t__ readpos; scalar_t__ bytesused; } ;
struct cx18_enc_idx_entry {int dummy; } ;
struct cx18 {struct cx18_stream* streams; } ;
typedef int s32 ;
struct TYPE_2__ {struct cx18* cx; } ;


 size_t CX18_ENC_STREAM_TYPE_IDX ;
 int CX18_ENC_STREAM_TYPE_IDX_FW_MDL_MIN ;
 int EINVAL ;
 scalar_t__ V4L2_ENC_IDX_ENTRIES ;
 struct cx18_mdl* cx18_dequeue (struct cx18_stream*,int *) ;
 int cx18_enqueue (struct cx18_stream*,struct cx18_mdl*,int *) ;
 int cx18_process_idx_data (struct cx18_stream*,struct cx18_mdl*,struct v4l2_enc_idx*) ;
 int cx18_push (struct cx18_stream*,struct cx18_mdl*,int *) ;
 int cx18_stream_enabled (struct cx18_stream*) ;
 int cx18_stream_load_fw_queue (struct cx18_stream*) ;
 TYPE_1__* fh2id (void*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int cx18_g_enc_index(struct file *file, void *fh,
    struct v4l2_enc_idx *idx)
{
 struct cx18 *cx = fh2id(fh)->cx;
 struct cx18_stream *s = &cx->streams[CX18_ENC_STREAM_TYPE_IDX];
 s32 tmp;
 struct cx18_mdl *mdl;

 if (!cx18_stream_enabled(s))
  return -EINVAL;


 tmp = s->buffers -
     s->bufs_per_mdl * CX18_ENC_STREAM_TYPE_IDX_FW_MDL_MIN;
 if (tmp <= 0)
  tmp = 1;
 tmp = tmp * s->buf_size / sizeof(struct cx18_enc_idx_entry);


 idx->entries = 0;
 idx->entries_cap = tmp;
 memset(idx->reserved, 0, sizeof(idx->reserved));


 do {
  mdl = cx18_dequeue(s, &s->q_full);
  if (mdl == ((void*)0))
   break;


  cx18_process_idx_data(s, mdl, idx);
  if (mdl->readpos < mdl->bytesused) {

   cx18_push(s, mdl, &s->q_full);
   break;
  }


  cx18_enqueue(s, mdl, &s->q_free);

 } while (idx->entries < V4L2_ENC_IDX_ENTRIES);


 cx18_stream_load_fw_queue(s);
 return 0;
}
