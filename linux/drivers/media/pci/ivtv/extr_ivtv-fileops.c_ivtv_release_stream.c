
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_stream {size_t type; int s_flags; int * fh; int name; struct ivtv* itv; } ;
struct ivtv {struct ivtv_stream* streams; } ;


 int IVTV_DEBUG_WARN (char*,int ) ;
 scalar_t__ IVTV_DEC_STREAM_TYPE_MPG ;
 size_t IVTV_DEC_STREAM_TYPE_VBI ;
 scalar_t__ IVTV_ENC_STREAM_TYPE_MPG ;
 size_t IVTV_ENC_STREAM_TYPE_VBI ;
 int IVTV_F_S_CLAIMED ;
 int IVTV_F_S_INTERNAL_USE ;
 int IVTV_IRQ_DEC_VBI_RE_INSERT ;
 int clear_bit (int ,int *) ;
 int ivtv_flush_queues (struct ivtv_stream*) ;
 int ivtv_set_irq_mask (struct ivtv*,int ) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void ivtv_release_stream(struct ivtv_stream *s)
{
 struct ivtv *itv = s->itv;
 struct ivtv_stream *s_vbi;

 s->fh = ((void*)0);
 if ((s->type == IVTV_DEC_STREAM_TYPE_VBI || s->type == IVTV_ENC_STREAM_TYPE_VBI) &&
  test_bit(IVTV_F_S_INTERNAL_USE, &s->s_flags)) {

  return;
 }
 if (!test_and_clear_bit(IVTV_F_S_CLAIMED, &s->s_flags)) {
  IVTV_DEBUG_WARN("Release stream %s not in use!\n", s->name);
  return;
 }

 ivtv_flush_queues(s);


 if (s->type == IVTV_DEC_STREAM_TYPE_VBI)
  ivtv_set_irq_mask(itv, IVTV_IRQ_DEC_VBI_RE_INSERT);




 if (s->type == IVTV_DEC_STREAM_TYPE_MPG)
  s_vbi = &itv->streams[IVTV_DEC_STREAM_TYPE_VBI];
 else if (s->type == IVTV_ENC_STREAM_TYPE_MPG)
  s_vbi = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];
 else
  return;


 if (!test_and_clear_bit(IVTV_F_S_INTERNAL_USE, &s_vbi->s_flags)) {

  return;
 }
 if (s_vbi->fh) {

  return;
 }

 if (s_vbi->type == IVTV_DEC_STREAM_TYPE_VBI)
  ivtv_set_irq_mask(itv, IVTV_IRQ_DEC_VBI_RE_INSERT);
 clear_bit(IVTV_F_S_CLAIMED, &s_vbi->s_flags);
 ivtv_flush_queues(s_vbi);
}
