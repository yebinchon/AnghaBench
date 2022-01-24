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
struct usbnet {scalar_t__* data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cdc_ncm_ctx {unsigned long timer_interval; int /*<<< orphan*/  mtx; scalar_t__ tx_timer_pending; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned long CDC_NCM_TIMER_INTERVAL_MAX ; 
 unsigned long CDC_NCM_TIMER_INTERVAL_MIN ; 
 size_t EINVAL ; 
 unsigned long NSEC_PER_USEC ; 
 size_t FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct usbnet* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *d,  struct device_attribute *attr, const char *buf, size_t len)
{
	struct usbnet *dev = FUNC1(FUNC4(d));
	struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
	ssize_t ret;
	unsigned long val;

	ret = FUNC0(buf, 0, &val);
	if (ret)
		return ret;
	if (val && (val < CDC_NCM_TIMER_INTERVAL_MIN || val > CDC_NCM_TIMER_INTERVAL_MAX))
		return -EINVAL;

	FUNC2(&ctx->mtx);
	ctx->timer_interval = val * NSEC_PER_USEC;
	if (!ctx->timer_interval)
		ctx->tx_timer_pending = 0;
	FUNC3(&ctx->mtx);
	return len;
}