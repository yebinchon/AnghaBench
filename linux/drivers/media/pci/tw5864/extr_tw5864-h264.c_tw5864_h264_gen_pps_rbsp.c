
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bs {int dummy; } ;


 int bs_init (struct bs*,int *,size_t) ;
 int bs_len (struct bs*) ;
 int bs_rbsp_trailing (struct bs*) ;
 int bs_write (struct bs*,int,int ) ;
 int bs_write_se (struct bs*,int) ;
 int bs_write_ue (struct bs*,int ) ;

__attribute__((used)) static int tw5864_h264_gen_pps_rbsp(u8 *buf, size_t size, int qp)
{
 struct bs bs, *s;

 s = &bs;
 bs_init(s, buf, size);
 bs_write_ue(s, 0);
 bs_write_ue(s, 0);
 bs_write(s, 1, 0);
 bs_write(s, 1, 0);
 bs_write_ue(s, 0);
 bs_write_ue(s, 0);
 bs_write_ue(s, 0);
 bs_write(s, 1, 0);
 bs_write(s, 2, 0);
 bs_write_se(s, qp - 26);
 bs_write_se(s, qp - 26);
 bs_write_se(s, 0);
 bs_write(s, 1, 0);
 bs_write(s, 1, 0);
 bs_write(s, 1, 0);
 bs_rbsp_trailing(s);
 return bs_len(s);
}
