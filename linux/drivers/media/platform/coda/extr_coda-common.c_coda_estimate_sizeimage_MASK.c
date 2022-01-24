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
struct coda_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct coda_ctx *ctx, u32 sizeimage,
					    u32 width, u32 height)
{
	/*
	 * This is a rough estimate for sensible compressed buffer
	 * sizes (between 1 and 16 bits per pixel). This could be
	 * improved by better format specific worst case estimates.
	 */
	return FUNC1(FUNC0(sizeimage, width * height / 8,
					 width * height * 2), PAGE_SIZE);
}