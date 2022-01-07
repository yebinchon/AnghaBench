
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct av7110 {int aout; int avout; } ;


 int aux_ring_buffer_write (int *,int*,int) ;
 int dprintk (int,char*,struct av7110*) ;
 int get_video_format (struct av7110*,int*,int) ;

__attribute__((used)) static void play_video_cb(u8 *buf, int count, void *priv)
{
 struct av7110 *av7110 = (struct av7110 *) priv;
 dprintk(2, "av7110:%p, \n", av7110);

 if ((buf[3] & 0xe0) == 0xe0) {
  get_video_format(av7110, buf, count);
  aux_ring_buffer_write(&av7110->avout, buf, count);
 } else
  aux_ring_buffer_write(&av7110->aout, buf, count);
}
