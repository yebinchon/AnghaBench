
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bs {int dummy; } ;


 int MAX_GOP_SIZE ;
 int bs_init (struct bs*,int *,size_t) ;
 int bs_len (struct bs*) ;
 int bs_rbsp_trailing (struct bs*) ;
 int bs_write (struct bs*,int,int) ;
 int bs_write_ue (struct bs*,int) ;
 int ilog2 (int ) ;

__attribute__((used)) static int tw5864_h264_gen_sps_rbsp(u8 *buf, size_t size, int width, int height)
{
 struct bs bs, *s;

 s = &bs;
 bs_init(s, buf, size);
 bs_write(s, 8, 0x42);
 bs_write(s, 1, 1);
 bs_write(s, 1, 1);
 bs_write(s, 1, 0);
 bs_write(s, 5, 0);
 bs_write(s, 8, 0x1e);
 bs_write_ue(s, 0);
 bs_write_ue(s, ilog2(MAX_GOP_SIZE) - 4);
 bs_write_ue(s, 0);

 bs_write_ue(s, ilog2(MAX_GOP_SIZE) - 4);
 bs_write_ue(s, 1);
 bs_write(s, 1, 0);
 bs_write_ue(s, width / 16 - 1);
 bs_write_ue(s, height / 16 - 1);
 bs_write(s, 1, 1);
 bs_write(s, 1, 0);
 bs_write(s, 1, 0);
 bs_write(s, 1, 0);
 bs_rbsp_trailing(s);
 return bs_len(s);
}
