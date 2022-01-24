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
struct mtk_mdp_ctx {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct mtk_mdp_ctx* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_mdp_ctx*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
				      struct v4l2_format *f)
{
	struct mtk_mdp_ctx *ctx = FUNC0(fh);

	if (!FUNC1(ctx, f))
		return -EINVAL;
	return 0;
}