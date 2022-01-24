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
struct v4l2_encoder_cmd {int dummy; } ;
struct file {int dummy; } ;
struct coda_ctx {scalar_t__ inst_type; } ;

/* Variables and functions */
 scalar_t__ CODA_INST_ENCODER ; 
 int ENOTTY ; 
 struct coda_ctx* FUNC0 (void*) ; 
 int FUNC1 (struct file*,void*,struct v4l2_encoder_cmd*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
				struct v4l2_encoder_cmd *ec)
{
	struct coda_ctx *ctx = FUNC0(fh);

	if (ctx->inst_type != CODA_INST_ENCODER)
		return -ENOTTY;

	return FUNC1(file, fh, ec);
}