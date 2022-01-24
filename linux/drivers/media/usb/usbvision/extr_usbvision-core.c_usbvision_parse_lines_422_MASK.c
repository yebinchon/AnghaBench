#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int bytes_per_pixel; int format; } ;
struct TYPE_3__ {int frame_width; } ;
struct usbvision_frame {unsigned char* data; int v4l2_linesize; int curline; int frmheight; int frmwidth; TYPE_2__ v4l2_format; TYPE_1__ isoc_header; } ;
struct usb_usbvision {int stretch_width; int stretch_height; struct usbvision_frame* cur_frame; } ;
typedef  enum parse_state { ____Placeholder_parse_state } parse_state ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_PARSE ; 
 int MAX_FRAME_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
#define  V4L2_PIX_FMT_RGB24 131 
#define  V4L2_PIX_FMT_RGB32 130 
#define  V4L2_PIX_FMT_RGB555 129 
#define  V4L2_PIX_FMT_RGB565 128 
 int V4L2_PIX_FMT_YUYV ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 int parse_state_continue ; 
 int parse_state_next_frame ; 
 int parse_state_out ; 
 int /*<<< orphan*/  FUNC2 (struct usb_usbvision*,unsigned char*,int) ; 
 int FUNC3 (struct usb_usbvision*) ; 

__attribute__((used)) static enum parse_state FUNC4(struct usb_usbvision *usbvision,
					   long *pcopylen)
{
	volatile struct usbvision_frame *frame;
	unsigned char *f;
	int len;
	int i;
	unsigned char yuyv[4] = { 180, 128, 10, 128 }; /* YUV components */
	unsigned char rv, gv, bv;	/* RGB components */
	int clipmask_index, bytes_per_pixel;
	int stretch_bytes, clipmask_add;

	frame  = usbvision->cur_frame;
	f = frame->data + (frame->v4l2_linesize * frame->curline);

	/* Make sure there's enough data for the entire line */
	len = (frame->isoc_header.frame_width * 2) + 5;
	if (FUNC3(usbvision) < len) {
		FUNC0(DBG_PARSE, "out of data in line %d, need %u.\n", frame->curline, len);
		return parse_state_out;
	}

	if ((frame->curline + 1) >= frame->frmheight)
		return parse_state_next_frame;

	bytes_per_pixel = frame->v4l2_format.bytes_per_pixel;
	stretch_bytes = (usbvision->stretch_width - 1) * bytes_per_pixel;
	clipmask_index = frame->curline * MAX_FRAME_WIDTH;
	clipmask_add = usbvision->stretch_width;

	for (i = 0; i < frame->frmwidth; i += (2 * usbvision->stretch_width)) {
		FUNC2(usbvision, &yuyv[0], 4);

		if (frame->v4l2_format.format == V4L2_PIX_FMT_YUYV) {
			*f++ = yuyv[0]; /* Y */
			*f++ = yuyv[3]; /* U */
		} else {
			FUNC1(yuyv[0], yuyv[1], yuyv[3], rv, gv, bv);
			switch (frame->v4l2_format.format) {
			case V4L2_PIX_FMT_RGB565:
				*f++ = (0x1F & rv) |
					(0xE0 & (gv << 5));
				*f++ = (0x07 & (gv >> 3)) |
					(0xF8 &  bv);
				break;
			case V4L2_PIX_FMT_RGB24:
				*f++ = rv;
				*f++ = gv;
				*f++ = bv;
				break;
			case V4L2_PIX_FMT_RGB32:
				*f++ = rv;
				*f++ = gv;
				*f++ = bv;
				f++;
				break;
			case V4L2_PIX_FMT_RGB555:
				*f++ = (0x1F & rv) |
					(0xE0 & (gv << 5));
				*f++ = (0x03 & (gv >> 3)) |
					(0x7C & (bv << 2));
				break;
			}
		}
		clipmask_index += clipmask_add;
		f += stretch_bytes;

		if (frame->v4l2_format.format == V4L2_PIX_FMT_YUYV) {
			*f++ = yuyv[2]; /* Y */
			*f++ = yuyv[1]; /* V */
		} else {
			FUNC1(yuyv[2], yuyv[1], yuyv[3], rv, gv, bv);
			switch (frame->v4l2_format.format) {
			case V4L2_PIX_FMT_RGB565:
				*f++ = (0x1F & rv) |
					(0xE0 & (gv << 5));
				*f++ = (0x07 & (gv >> 3)) |
					(0xF8 &  bv);
				break;
			case V4L2_PIX_FMT_RGB24:
				*f++ = rv;
				*f++ = gv;
				*f++ = bv;
				break;
			case V4L2_PIX_FMT_RGB32:
				*f++ = rv;
				*f++ = gv;
				*f++ = bv;
				f++;
				break;
			case V4L2_PIX_FMT_RGB555:
				*f++ = (0x1F & rv) |
					(0xE0 & (gv << 5));
				*f++ = (0x03 & (gv >> 3)) |
					(0x7C & (bv << 2));
				break;
			}
		}
		clipmask_index += clipmask_add;
		f += stretch_bytes;
	}

	frame->curline += usbvision->stretch_height;
	*pcopylen += frame->v4l2_linesize * usbvision->stretch_height;

	if (frame->curline >= frame->frmheight)
		return parse_state_next_frame;
	return parse_state_continue;
}