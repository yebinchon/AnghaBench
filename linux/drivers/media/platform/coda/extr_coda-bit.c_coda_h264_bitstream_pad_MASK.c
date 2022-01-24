#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct coda_ctx {int /*<<< orphan*/  bitstream_fifo; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct coda_ctx *ctx, u32 size)
{
	unsigned char *buf;
	u32 n;

	if (size < 6)
		size = 6;

	buf = FUNC3(size, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	FUNC0(size, buf);
	n = FUNC1(&ctx->bitstream_fifo, buf, size);
	FUNC2(buf);

	return (n < size) ? -ENOSPC : 0;
}