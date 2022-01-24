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
struct v4l2_decoder_cmd {int dummy; } ;
struct file {int dummy; } ;
struct delta_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct delta_ctx*,void*) ; 
 int FUNC1 (struct file*,void*,struct v4l2_decoder_cmd*) ; 
 struct delta_ctx* FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
			     struct v4l2_decoder_cmd *cmd)
{
	struct delta_ctx *ctx = FUNC2(fh);
	int ret = 0;

	ret = FUNC1(file, fh, cmd);
	if (ret)
		return ret;

	return FUNC0(ctx, fh);
}