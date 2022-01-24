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
typedef  int /*<<< orphan*/  u32 ;
struct hva_enc {int (* open ) (struct hva_ctx*) ;int /*<<< orphan*/  name; } ;
struct hva_dev {int instance_id; } ;
struct hva_ctx {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct device* FUNC0 (struct hva_ctx*) ; 
 struct hva_dev* FUNC1 (struct hva_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (struct hva_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int,char*) ; 
 int FUNC6 (struct hva_ctx*) ; 

__attribute__((used)) static int FUNC7(struct hva_ctx *ctx, u32 streamformat,
			    u32 pixelformat, struct hva_enc **penc)
{
	struct hva_dev *hva = FUNC1(ctx);
	struct device *dev = FUNC0(ctx);
	struct hva_enc *enc;
	int ret;

	/* find an encoder which can deal with these formats */
	enc = (struct hva_enc *)FUNC4(ctx, pixelformat,
						 streamformat);
	if (!enc) {
		FUNC3(dev, "%s no encoder found matching %4.4s => %4.4s\n",
			ctx->name, (char *)&pixelformat, (char *)&streamformat);
		return -EINVAL;
	}

	FUNC2(dev, "%s one encoder matching %4.4s => %4.4s\n",
		ctx->name, (char *)&pixelformat, (char *)&streamformat);

	/* update instance name */
	FUNC5(ctx->name, sizeof(ctx->name), "[%3d:%4.4s]",
		 hva->instance_id, (char *)&streamformat);

	/* open encoder instance */
	ret = enc->open(ctx);
	if (ret) {
		FUNC3(dev, "%s failed to open encoder instance (%d)\n",
			ctx->name, ret);
		return ret;
	}

	FUNC2(dev, "%s %s encoder opened\n", ctx->name, enc->name);

	*penc = enc;

	return ret;
}