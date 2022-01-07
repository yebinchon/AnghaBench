
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct videobuf_dmabuf {int sglist; } ;
struct bttv_tvnorm {int swidth; int sheight; } ;
struct TYPE_6__ {size_t field; int width; int height; int size; } ;
struct bttv_buffer {TYPE_2__* fmt; int btswap; int btformat; TYPE_3__ vb; int bottom; int top; int crop; int geo; int tvnorm; } ;
struct TYPE_4__ {int nr; } ;
struct bttv {TYPE_1__ c; } ;
struct TYPE_5__ {int flags; int depth; int hshift; int vshift; int btswap; int btformat; int fourcc; } ;


 int BUG () ;
 int FORMAT_FLAGS_CrCb ;
 int FORMAT_FLAGS_PACKED ;
 int FORMAT_FLAGS_PLANAR ;
 int FORMAT_FLAGS_RAW ;
 int RAW_BPL ;
 int RAW_LINES ;

 int V4L2_FIELD_HAS_BOTH (int) ;



 int bttv_calc_geo (struct bttv*,int *,int,int,int,struct bttv_tvnorm const*,int *) ;
 int bttv_risc_packed (struct bttv*,int *,int ,int,int,int,int ,int) ;
 int bttv_risc_planar (struct bttv*,int *,int ,int,int,int,int,int,int,int,int,int) ;
 struct bttv_tvnorm* bttv_tvnorms ;
 int dprintk (char*,int ,int ,int ,int,int) ;
 int * v4l2_field_names ;
 struct videobuf_dmabuf* videobuf_to_dma (TYPE_3__*) ;

int
bttv_buffer_risc(struct bttv *btv, struct bttv_buffer *buf)
{
 const struct bttv_tvnorm *tvnorm = bttv_tvnorms + buf->tvnorm;
 struct videobuf_dmabuf *dma=videobuf_to_dma(&buf->vb);

 dprintk("%d: buffer field: %s  format: 0x%08x  size: %dx%d\n",
  btv->c.nr, v4l2_field_names[buf->vb.field],
  buf->fmt->fourcc, buf->vb.width, buf->vb.height);


 if (buf->fmt->flags & FORMAT_FLAGS_PACKED) {
  int bpl = (buf->fmt->depth >> 3) * buf->vb.width;
  int bpf = bpl * (buf->vb.height >> 1);

  bttv_calc_geo(btv,&buf->geo,buf->vb.width,buf->vb.height,
         V4L2_FIELD_HAS_BOTH(buf->vb.field),
         tvnorm,&buf->crop);

  switch (buf->vb.field) {
  case 128:
   bttv_risc_packed(btv,&buf->top,dma->sglist,
                   0,bpl,
                    0, 0,
      buf->vb.height);
   break;
  case 131:
   bttv_risc_packed(btv,&buf->bottom,dma->sglist,
      0,bpl,0,0,buf->vb.height);
   break;
  case 130:
   bttv_risc_packed(btv,&buf->top,dma->sglist,
      0,bpl,bpl,0,buf->vb.height >> 1);
   bttv_risc_packed(btv,&buf->bottom,dma->sglist,
      bpl,bpl,bpl,0,buf->vb.height >> 1);
   break;
  case 129:
   bttv_risc_packed(btv,&buf->top,dma->sglist,
      0,bpl,0,0,buf->vb.height >> 1);
   bttv_risc_packed(btv,&buf->bottom,dma->sglist,
      bpf,bpl,0,0,buf->vb.height >> 1);
   break;
  default:
   BUG();
  }
 }


 if (buf->fmt->flags & FORMAT_FLAGS_PLANAR) {
  int uoffset, voffset;
  int ypadding, cpadding, lines;


  uoffset = buf->vb.width * buf->vb.height;
  voffset = buf->vb.width * buf->vb.height;
  if (buf->fmt->flags & FORMAT_FLAGS_CrCb) {

   uoffset >>= buf->fmt->hshift;
   uoffset >>= buf->fmt->vshift;
   uoffset += voffset;
  } else {

   voffset >>= buf->fmt->hshift;
   voffset >>= buf->fmt->vshift;
   voffset += uoffset;
  }

  switch (buf->vb.field) {
  case 128:
   bttv_calc_geo(btv,&buf->geo,buf->vb.width,
          buf->vb.height, 0,
          tvnorm,&buf->crop);
   bttv_risc_planar(btv, &buf->top, dma->sglist,
      0,buf->vb.width,0,buf->vb.height,
      uoffset,voffset,buf->fmt->hshift,
      buf->fmt->vshift,0);
   break;
  case 131:
   bttv_calc_geo(btv,&buf->geo,buf->vb.width,
          buf->vb.height,0,
          tvnorm,&buf->crop);
   bttv_risc_planar(btv, &buf->bottom, dma->sglist,
      0,buf->vb.width,0,buf->vb.height,
      uoffset,voffset,buf->fmt->hshift,
      buf->fmt->vshift,0);
   break;
  case 130:
   bttv_calc_geo(btv,&buf->geo,buf->vb.width,
          buf->vb.height,1,
          tvnorm,&buf->crop);
   lines = buf->vb.height >> 1;
   ypadding = buf->vb.width;
   cpadding = buf->vb.width >> buf->fmt->hshift;
   bttv_risc_planar(btv,&buf->top,
      dma->sglist,
      0,buf->vb.width,ypadding,lines,
      uoffset,voffset,
      buf->fmt->hshift,
      buf->fmt->vshift,
      cpadding);
   bttv_risc_planar(btv,&buf->bottom,
      dma->sglist,
      ypadding,buf->vb.width,ypadding,lines,
      uoffset+cpadding,
      voffset+cpadding,
      buf->fmt->hshift,
      buf->fmt->vshift,
      cpadding);
   break;
  case 129:
   bttv_calc_geo(btv,&buf->geo,buf->vb.width,
          buf->vb.height,1,
          tvnorm,&buf->crop);
   lines = buf->vb.height >> 1;
   ypadding = buf->vb.width;
   cpadding = buf->vb.width >> buf->fmt->hshift;
   bttv_risc_planar(btv,&buf->top,
      dma->sglist,
      0,buf->vb.width,0,lines,
      uoffset >> 1,
      voffset >> 1,
      buf->fmt->hshift,
      buf->fmt->vshift,
      0);
   bttv_risc_planar(btv,&buf->bottom,
      dma->sglist,
      lines * ypadding,buf->vb.width,0,lines,
      lines * ypadding + (uoffset >> 1),
      lines * ypadding + (voffset >> 1),
      buf->fmt->hshift,
      buf->fmt->vshift,
      0);
   break;
  default:
   BUG();
  }
 }


 if (buf->fmt->flags & FORMAT_FLAGS_RAW) {

  buf->vb.field = 129;
  bttv_calc_geo(btv,&buf->geo,tvnorm->swidth,tvnorm->sheight,
         1,tvnorm,&buf->crop);
  bttv_risc_packed(btv, &buf->top, dma->sglist,
                  0, RAW_BPL, 0,
                      0, RAW_LINES);
  bttv_risc_packed(btv, &buf->bottom, dma->sglist,
     buf->vb.size/2 , RAW_BPL, 0, 0, RAW_LINES);
 }


 buf->btformat = buf->fmt->btformat;
 buf->btswap = buf->fmt->btswap;
 return 0;
}
