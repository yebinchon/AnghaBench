
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int height; int width; } ;
struct bttv_overlay {int field; size_t tvnorm; TYPE_2__ w; } ;
struct bttv_format {int btswap; int btformat; int fourcc; } ;
struct TYPE_6__ {size_t field; } ;
struct bttv_buffer {TYPE_3__ vb; int btswap; int btformat; int bottom; int top; int crop; int geo; } ;
struct TYPE_4__ {int nr; } ;
struct bttv {TYPE_1__ c; } ;


 int BUG () ;

 int V4L2_FIELD_HAS_BOTH (int) ;


 int bttv_calc_geo (struct bttv*,int *,int ,int ,int ,int *,int *) ;
 int bttv_risc_overlay (struct bttv*,int *,struct bttv_format const*,struct bttv_overlay*,int,int) ;
 int * bttv_tvnorms ;
 int dprintk (char*,int ,int ,int ,int ,int ) ;
 int * v4l2_field_names ;

int
bttv_overlay_risc(struct bttv *btv,
    struct bttv_overlay *ov,
    const struct bttv_format *fmt,
    struct bttv_buffer *buf)
{

 dprintk("%d: overlay fields: %s format: 0x%08x  size: %dx%d\n",
  btv->c.nr, v4l2_field_names[buf->vb.field],
  fmt->fourcc, ov->w.width, ov->w.height);


 bttv_calc_geo(btv,&buf->geo,ov->w.width,ov->w.height,
        V4L2_FIELD_HAS_BOTH(ov->field),
        &bttv_tvnorms[ov->tvnorm],&buf->crop);


 switch (ov->field) {
 case 128:
  bttv_risc_overlay(btv, &buf->top, fmt, ov, 0, 0);
  break;
 case 130:
  bttv_risc_overlay(btv, &buf->bottom, fmt, ov, 0, 0);
  break;
 case 129:
  bttv_risc_overlay(btv, &buf->top, fmt, ov, 0, 1);
  bttv_risc_overlay(btv, &buf->bottom, fmt, ov, 1, 0);
  break;
 default:
  BUG();
 }


 buf->btformat = fmt->btformat;
 buf->btswap = fmt->btswap;
 buf->vb.field = ov->field;
 return 0;
}
