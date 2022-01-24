#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned long u32 ;
struct vb2_v4l2_buffer {int flags; scalar_t__ sequence; int /*<<< orphan*/  vb2_buf; } ;
struct TYPE_5__ {scalar_t__ size; } ;
struct coda_ctx {scalar_t__ qsequence; int hold; TYPE_4__* dev; TYPE_3__* codec; TYPE_1__ bitstream; } ;
struct TYPE_8__ {int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  v4l2_dev; TYPE_2__* devtype; } ;
struct TYPE_7__ {scalar_t__ src_fourcc; } ;
struct TYPE_6__ {scalar_t__ product; } ;

/* Variables and functions */
 scalar_t__ CODA_960 ; 
 int V4L2_BUF_FLAG_LAST ; 
 scalar_t__ V4L2_PIX_FMT_H264 ; 
 int /*<<< orphan*/  FUNC0 (struct coda_ctx*) ; 
 int FUNC1 (struct coda_ctx*,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC2 (struct coda_ctx*,struct vb2_v4l2_buffer*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,struct coda_ctx*,char*,...) ; 
 scalar_t__ FUNC4 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct coda_ctx*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct coda_ctx* FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct coda_ctx *ctx,
				     struct vb2_v4l2_buffer *src_buf)
{
	unsigned long payload = FUNC9(&src_buf->vb2_buf, 0);
	u8 *vaddr = FUNC10(&src_buf->vb2_buf, 0);
	int ret;
	int i;

	if (FUNC4(ctx) + payload + 512 >=
	    ctx->bitstream.size)
		return false;

	if (!vaddr) {
		FUNC7(&ctx->dev->v4l2_dev, "trying to queue empty buffer\n");
		return true;
	}

	if (ctx->qsequence == 0 && payload < 512) {
		/*
		 * Add padding after the first buffer, if it is too small to be
		 * fetched by the CODA, by repeating the headers. Without
		 * repeated headers, or the first frame already queued, decoder
		 * sequence initialization fails with error code 0x2000 on i.MX6
		 * or error code 0x1 on i.MX51.
		 */
		u32 header_size = FUNC2(ctx, src_buf,
							    payload);

		if (header_size) {
			FUNC3(1, ctx, "pad with %u-byte header\n",
				 header_size);
			for (i = payload; i < 512; i += header_size) {
				ret = FUNC1(ctx, vaddr,
							   header_size);
				if (ret < 0) {
					FUNC7(&ctx->dev->v4l2_dev,
						 "bitstream buffer overflow\n");
					return false;
				}
				if (ctx->dev->devtype->product == CODA_960)
					break;
			}
		} else {
			FUNC3(1, ctx,
				 "could not parse header, sequence initialization might fail\n");
		}
	}

	/* Add padding before the first buffer, if it is too small */
	if (ctx->qsequence == 0 && payload < 512 &&
	    ctx->codec->src_fourcc == V4L2_PIX_FMT_H264)
		FUNC5(ctx, 512 - payload);

	ret = FUNC1(ctx, vaddr, payload);
	if (ret < 0) {
		FUNC7(&ctx->dev->v4l2_dev, "bitstream buffer overflow\n");
		return false;
	}

	src_buf->sequence = ctx->qsequence++;

	/* Sync read pointer to device */
	if (ctx == FUNC8(ctx->dev->m2m_dev))
		FUNC6(ctx);

	/* Set the stream-end flag after the last buffer is queued */
	if (src_buf->flags & V4L2_BUF_FLAG_LAST)
		FUNC0(ctx);
	ctx->hold = false;

	return true;
}