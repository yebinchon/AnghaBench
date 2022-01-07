
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivtv_stream {int s_flags; int * fh; } ;
struct ivtv_open_id {int fh; struct ivtv* itv; } ;
struct TYPE_2__ {scalar_t__ insert_mpeg; } ;
struct ivtv {struct ivtv_stream* streams; TYPE_1__ vbi; } ;


 int EBUSY ;
 int IVTV_DEBUG_INFO (char*,...) ;
 int IVTV_DEC_STREAM_TYPE_MPG ;
 int IVTV_DEC_STREAM_TYPE_VBI ;
 int IVTV_ENC_STREAM_TYPE_MPG ;
 int IVTV_ENC_STREAM_TYPE_VBI ;
 int IVTV_F_S_CLAIMED ;
 int IVTV_F_S_INTERNAL_USE ;
 int IVTV_IRQ_DEC_VBI_RE_INSERT ;
 int ivtv_clear_irq_mask (struct ivtv*,int ) ;
 int ivtv_raw_vbi (struct ivtv*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

int ivtv_claim_stream(struct ivtv_open_id *id, int type)
{
 struct ivtv *itv = id->itv;
 struct ivtv_stream *s = &itv->streams[type];
 struct ivtv_stream *s_vbi;
 int vbi_type;

 if (test_and_set_bit(IVTV_F_S_CLAIMED, &s->s_flags)) {

  if (s->fh == &id->fh) {

   return 0;
  }
  if (s->fh == ((void*)0) && (type == IVTV_DEC_STREAM_TYPE_VBI ||
      type == IVTV_ENC_STREAM_TYPE_VBI)) {



   s->fh = &id->fh;
   IVTV_DEBUG_INFO("Start Read VBI\n");
   return 0;
  }

  IVTV_DEBUG_INFO("Stream %d is busy\n", type);
  return -EBUSY;
 }
 s->fh = &id->fh;
 if (type == IVTV_DEC_STREAM_TYPE_VBI) {

  ivtv_clear_irq_mask(itv, IVTV_IRQ_DEC_VBI_RE_INSERT);
 }





 if (type == IVTV_DEC_STREAM_TYPE_MPG) {
  vbi_type = IVTV_DEC_STREAM_TYPE_VBI;
 } else if (type == IVTV_ENC_STREAM_TYPE_MPG &&
     itv->vbi.insert_mpeg && !ivtv_raw_vbi(itv)) {
  vbi_type = IVTV_ENC_STREAM_TYPE_VBI;
 } else {
  return 0;
 }
 s_vbi = &itv->streams[vbi_type];

 if (!test_and_set_bit(IVTV_F_S_CLAIMED, &s_vbi->s_flags)) {

  if (vbi_type == IVTV_DEC_STREAM_TYPE_VBI)
   ivtv_clear_irq_mask(itv, IVTV_IRQ_DEC_VBI_RE_INSERT);
 }

 set_bit(IVTV_F_S_INTERNAL_USE, &s_vbi->s_flags);
 return 0;
}
