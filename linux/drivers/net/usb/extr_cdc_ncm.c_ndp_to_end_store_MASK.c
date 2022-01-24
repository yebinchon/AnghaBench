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
struct usbnet {int /*<<< orphan*/  net; scalar_t__* data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cdc_ncm_ctx {int drvflags; int /*<<< orphan*/  mtx; scalar_t__ delayed_ndp16; int /*<<< orphan*/  max_ndp_size; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int CDC_NCM_FLAG_NDP_TO_END ; 
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *d,  struct device_attribute *attr, const char *buf, size_t len)
{
	struct usbnet *dev = FUNC1(FUNC7(d));
	struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
	bool enable;

	if (FUNC6(buf, &enable))
		return -EINVAL;

	/* no change? */
	if (enable == (ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END))
		return len;

	if (enable && !ctx->delayed_ndp16) {
		ctx->delayed_ndp16 = FUNC0(ctx->max_ndp_size, GFP_KERNEL);
		if (!ctx->delayed_ndp16)
			return -ENOMEM;
	}

	/* flush pending data before changing flag */
	FUNC2(dev->net);
	FUNC8(NULL, dev->net);
	FUNC4(&ctx->mtx);
	if (enable)
		ctx->drvflags |= CDC_NCM_FLAG_NDP_TO_END;
	else
		ctx->drvflags &= ~CDC_NCM_FLAG_NDP_TO_END;
	FUNC5(&ctx->mtx);
	FUNC3(dev->net);

	return len;
}