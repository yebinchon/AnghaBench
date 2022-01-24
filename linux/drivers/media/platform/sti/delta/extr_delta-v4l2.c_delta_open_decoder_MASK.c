#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct delta_dev {int instance_id; int /*<<< orphan*/  dev; } ;
struct delta_dec {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  pixelformat; } ;
struct delta_ctx {int /*<<< orphan*/  name; TYPE_1__ frameinfo; struct delta_dev* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct delta_dec const*,int /*<<< orphan*/ ,struct delta_ctx*) ; 
 struct delta_dec* FUNC1 (struct delta_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  open ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int,char*) ; 

__attribute__((used)) static int FUNC5(struct delta_ctx *ctx, u32 streamformat,
			      u32 pixelformat, const struct delta_dec **pdec)
{
	struct delta_dev *delta = ctx->dev;
	const struct delta_dec *dec;
	int ret;

	dec = FUNC1(ctx, streamformat, ctx->frameinfo.pixelformat);
	if (!dec) {
		FUNC3(delta->dev, "%s no decoder found matching %4.4s => %4.4s\n",
			ctx->name, (char *)&streamformat, (char *)&pixelformat);
		return -EINVAL;
	}

	FUNC2(delta->dev, "%s one decoder matching %4.4s => %4.4s\n",
		ctx->name, (char *)&streamformat, (char *)&pixelformat);

	/* update instance name */
	FUNC4(ctx->name, sizeof(ctx->name), "[%3d:%4.4s]",
		 delta->instance_id, (char *)&streamformat);

	/* open decoder instance */
	ret = FUNC0(dec, open, ctx);
	if (ret) {
		FUNC3(delta->dev, "%s failed to open decoder instance (%d)\n",
			ctx->name, ret);
		return ret;
	}

	FUNC2(delta->dev, "%s %s decoder opened\n", ctx->name, dec->name);

	*pdec = dec;

	return ret;
}