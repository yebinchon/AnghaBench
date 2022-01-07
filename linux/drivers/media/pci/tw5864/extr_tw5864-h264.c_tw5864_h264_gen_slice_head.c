
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bs {int bits_left; int* ptr; } ;


 int MAX_GOP_SIZE ;
 int bs_init (struct bs*,int*,size_t) ;
 int bs_len (struct bs*) ;
 int bs_write (struct bs*,int ,unsigned int) ;
 int bs_write1 (struct bs*,int ) ;
 int bs_write_se (struct bs*,int ) ;
 int bs_write_ue (struct bs*,unsigned int) ;
 int ilog2 (int ) ;

__attribute__((used)) static int tw5864_h264_gen_slice_head(u8 *buf, size_t size,
          unsigned int idr_pic_id,
          unsigned int frame_gop_seqno,
          int *tail_nb_bits, u8 *tail)
{
 struct bs bs, *s;
 int is_i_frame = frame_gop_seqno == 0;

 s = &bs;
 bs_init(s, buf, size);
 bs_write_ue(s, 0);
 bs_write_ue(s, is_i_frame ? 2 : 5);
 bs_write_ue(s, 0);
 bs_write(s, ilog2(MAX_GOP_SIZE), frame_gop_seqno);
 if (is_i_frame)
  bs_write_ue(s, idr_pic_id);


 bs_write(s, ilog2(MAX_GOP_SIZE), frame_gop_seqno);

 if (is_i_frame) {
  bs_write1(s, 0);
  bs_write1(s, 0);
 } else {
  bs_write1(s, 0);
  bs_write1(s, 0);
  bs_write1(s, 0);
 }

 bs_write_se(s, 0);

 if (s->bits_left != 8) {
  *tail = ((s->ptr[0]) << s->bits_left);
  *tail_nb_bits = 8 - s->bits_left;
 } else {
  *tail = 0;
  *tail_nb_bits = 0;
 }

 return bs_len(s);
}
