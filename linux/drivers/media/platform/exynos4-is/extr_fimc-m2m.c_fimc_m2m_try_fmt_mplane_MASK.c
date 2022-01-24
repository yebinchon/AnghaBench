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
struct v4l2_format {int dummy; } ;
struct fimc_ctx {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct fimc_ctx* FUNC0 (void*) ; 
 int FUNC1 (struct fimc_ctx*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
				   struct v4l2_format *f)
{
	struct fimc_ctx *ctx = FUNC0(fh);
	return FUNC1(ctx, f);
}