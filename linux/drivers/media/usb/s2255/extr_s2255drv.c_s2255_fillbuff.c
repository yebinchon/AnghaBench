
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* frame; } ;
struct s2255_vc {unsigned long last_frame; int width; int height; TYPE_3__* fmt; TYPE_2__ buffer; struct s2255_dev* dev; } ;
struct s2255_dev {int dummy; } ;
struct TYPE_8__ {int vb2_buf; } ;
struct s2255_buffer {TYPE_4__ vb; } ;
struct TYPE_7__ {int fourcc; } ;
struct TYPE_5__ {scalar_t__ lpvbits; } ;
 int dprintk (struct s2255_dev*,int,char*,char*,int) ;
 int memcpy (char*,char const*,int) ;
 int planar422p_to_yuv_packed (unsigned char const*,char*,int,int,int) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 char* vb2_plane_vaddr (int *,int ) ;
 int vb2_set_plane_payload (int *,int ,int) ;

__attribute__((used)) static void s2255_fillbuff(struct s2255_vc *vc,
      struct s2255_buffer *buf, int jpgsize)
{
 int pos = 0;
 const char *tmpbuf;
 char *vbuf = vb2_plane_vaddr(&buf->vb.vb2_buf, 0);
 unsigned long last_frame;
 struct s2255_dev *dev = vc->dev;

 if (!vbuf)
  return;
 last_frame = vc->last_frame;
 if (last_frame != -1) {
  tmpbuf =
      (const char *)vc->buffer.frame[last_frame].lpvbits;
  switch (vc->fmt->fourcc) {
  case 128:
  case 130:
   planar422p_to_yuv_packed((const unsigned char *)tmpbuf,
       vbuf, vc->width,
       vc->height,
       vc->fmt->fourcc);
   break;
  case 133:
   memcpy(vbuf, tmpbuf, vc->width * vc->height);
   break;
  case 132:
  case 131:
   vb2_set_plane_payload(&buf->vb.vb2_buf, 0, jpgsize);
   memcpy(vbuf, tmpbuf, jpgsize);
   break;
  case 129:
   memcpy(vbuf, tmpbuf,
          vc->width * vc->height * 2);
   break;
  default:
   pr_info("s2255: unknown format?\n");
  }
  vc->last_frame = -1;
 } else {
  pr_err("s2255: =======no frame\n");
  return;
 }
 dprintk(dev, 2, "s2255fill at : Buffer %p size= %d\n",
  vbuf, pos);
}
