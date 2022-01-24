#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct videobuf_dmabuf {int /*<<< orphan*/  sglist; } ;
struct bttv_tvnorm {int swidth; int sheight; } ;
struct TYPE_6__ {size_t field; int width; int height; int size; } ;
struct bttv_buffer {TYPE_2__* fmt; int /*<<< orphan*/  btswap; int /*<<< orphan*/  btformat; TYPE_3__ vb; int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  crop; int /*<<< orphan*/  geo; int /*<<< orphan*/  tvnorm; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr; } ;
struct bttv {TYPE_1__ c; } ;
struct TYPE_5__ {int flags; int depth; int hshift; int vshift; int /*<<< orphan*/  btswap; int /*<<< orphan*/  btformat; int /*<<< orphan*/  fourcc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FORMAT_FLAGS_CrCb ; 
 int FORMAT_FLAGS_PACKED ; 
 int FORMAT_FLAGS_PLANAR ; 
 int FORMAT_FLAGS_RAW ; 
 int RAW_BPL ; 
 int RAW_LINES ; 
#define  V4L2_FIELD_BOTTOM 131 
 int FUNC1 (int) ; 
#define  V4L2_FIELD_INTERLACED 130 
#define  V4L2_FIELD_SEQ_TB 129 
#define  V4L2_FIELD_TOP 128 
 int /*<<< orphan*/  FUNC2 (struct bttv*,int /*<<< orphan*/ *,int,int,int,struct bttv_tvnorm const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bttv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bttv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int,int,int,int,int) ; 
 struct bttv_tvnorm* bttv_tvnorms ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * v4l2_field_names ; 
 struct videobuf_dmabuf* FUNC6 (TYPE_3__*) ; 

int
FUNC7(struct bttv *btv, struct bttv_buffer *buf)
{
	const struct bttv_tvnorm *tvnorm = bttv_tvnorms + buf->tvnorm;
	struct videobuf_dmabuf *dma=FUNC6(&buf->vb);

	FUNC5("%d: buffer field: %s  format: 0x%08x  size: %dx%d\n",
		btv->c.nr, v4l2_field_names[buf->vb.field],
		buf->fmt->fourcc, buf->vb.width, buf->vb.height);

	/* packed pixel modes */
	if (buf->fmt->flags & FORMAT_FLAGS_PACKED) {
		int bpl = (buf->fmt->depth >> 3) * buf->vb.width;
		int bpf = bpl * (buf->vb.height >> 1);

		FUNC2(btv,&buf->geo,buf->vb.width,buf->vb.height,
			      FUNC1(buf->vb.field),
			      tvnorm,&buf->crop);

		switch (buf->vb.field) {
		case V4L2_FIELD_TOP:
			FUNC3(btv,&buf->top,dma->sglist,
					 /* offset */ 0,bpl,
					 /* padding */ 0,/* skip_lines */ 0,
					 buf->vb.height);
			break;
		case V4L2_FIELD_BOTTOM:
			FUNC3(btv,&buf->bottom,dma->sglist,
					 0,bpl,0,0,buf->vb.height);
			break;
		case V4L2_FIELD_INTERLACED:
			FUNC3(btv,&buf->top,dma->sglist,
					 0,bpl,bpl,0,buf->vb.height >> 1);
			FUNC3(btv,&buf->bottom,dma->sglist,
					 bpl,bpl,bpl,0,buf->vb.height >> 1);
			break;
		case V4L2_FIELD_SEQ_TB:
			FUNC3(btv,&buf->top,dma->sglist,
					 0,bpl,0,0,buf->vb.height >> 1);
			FUNC3(btv,&buf->bottom,dma->sglist,
					 bpf,bpl,0,0,buf->vb.height >> 1);
			break;
		default:
			FUNC0();
		}
	}

	/* planar modes */
	if (buf->fmt->flags & FORMAT_FLAGS_PLANAR) {
		int uoffset, voffset;
		int ypadding, cpadding, lines;

		/* calculate chroma offsets */
		uoffset = buf->vb.width * buf->vb.height;
		voffset = buf->vb.width * buf->vb.height;
		if (buf->fmt->flags & FORMAT_FLAGS_CrCb) {
			/* Y-Cr-Cb plane order */
			uoffset >>= buf->fmt->hshift;
			uoffset >>= buf->fmt->vshift;
			uoffset  += voffset;
		} else {
			/* Y-Cb-Cr plane order */
			voffset >>= buf->fmt->hshift;
			voffset >>= buf->fmt->vshift;
			voffset  += uoffset;
		}

		switch (buf->vb.field) {
		case V4L2_FIELD_TOP:
			FUNC2(btv,&buf->geo,buf->vb.width,
				      buf->vb.height,/* both_fields */ 0,
				      tvnorm,&buf->crop);
			FUNC4(btv, &buf->top, dma->sglist,
					 0,buf->vb.width,0,buf->vb.height,
					 uoffset,voffset,buf->fmt->hshift,
					 buf->fmt->vshift,0);
			break;
		case V4L2_FIELD_BOTTOM:
			FUNC2(btv,&buf->geo,buf->vb.width,
				      buf->vb.height,0,
				      tvnorm,&buf->crop);
			FUNC4(btv, &buf->bottom, dma->sglist,
					 0,buf->vb.width,0,buf->vb.height,
					 uoffset,voffset,buf->fmt->hshift,
					 buf->fmt->vshift,0);
			break;
		case V4L2_FIELD_INTERLACED:
			FUNC2(btv,&buf->geo,buf->vb.width,
				      buf->vb.height,1,
				      tvnorm,&buf->crop);
			lines    = buf->vb.height >> 1;
			ypadding = buf->vb.width;
			cpadding = buf->vb.width >> buf->fmt->hshift;
			FUNC4(btv,&buf->top,
					 dma->sglist,
					 0,buf->vb.width,ypadding,lines,
					 uoffset,voffset,
					 buf->fmt->hshift,
					 buf->fmt->vshift,
					 cpadding);
			FUNC4(btv,&buf->bottom,
					 dma->sglist,
					 ypadding,buf->vb.width,ypadding,lines,
					 uoffset+cpadding,
					 voffset+cpadding,
					 buf->fmt->hshift,
					 buf->fmt->vshift,
					 cpadding);
			break;
		case V4L2_FIELD_SEQ_TB:
			FUNC2(btv,&buf->geo,buf->vb.width,
				      buf->vb.height,1,
				      tvnorm,&buf->crop);
			lines    = buf->vb.height >> 1;
			ypadding = buf->vb.width;
			cpadding = buf->vb.width >> buf->fmt->hshift;
			FUNC4(btv,&buf->top,
					 dma->sglist,
					 0,buf->vb.width,0,lines,
					 uoffset >> 1,
					 voffset >> 1,
					 buf->fmt->hshift,
					 buf->fmt->vshift,
					 0);
			FUNC4(btv,&buf->bottom,
					 dma->sglist,
					 lines * ypadding,buf->vb.width,0,lines,
					 lines * ypadding + (uoffset >> 1),
					 lines * ypadding + (voffset >> 1),
					 buf->fmt->hshift,
					 buf->fmt->vshift,
					 0);
			break;
		default:
			FUNC0();
		}
	}

	/* raw data */
	if (buf->fmt->flags & FORMAT_FLAGS_RAW) {
		/* build risc code */
		buf->vb.field = V4L2_FIELD_SEQ_TB;
		FUNC2(btv,&buf->geo,tvnorm->swidth,tvnorm->sheight,
			      1,tvnorm,&buf->crop);
		FUNC3(btv, &buf->top,  dma->sglist,
				 /* offset */ 0, RAW_BPL, /* padding */ 0,
				 /* skip_lines */ 0, RAW_LINES);
		FUNC3(btv, &buf->bottom, dma->sglist,
				 buf->vb.size/2 , RAW_BPL, 0, 0, RAW_LINES);
	}

	/* copy format info */
	buf->btformat = buf->fmt->btformat;
	buf->btswap   = buf->fmt->btswap;
	return 0;
}