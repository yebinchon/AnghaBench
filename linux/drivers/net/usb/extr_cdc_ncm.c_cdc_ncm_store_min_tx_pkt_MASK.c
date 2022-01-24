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
struct cdc_ncm_ctx {unsigned long min_tx_pkt; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct usbnet* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *d,  struct device_attribute *attr, const char *buf, size_t len)
{
	struct usbnet *dev = FUNC1(FUNC2(d));
	struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
	unsigned long val;

	/* no need to restrict values - anything from 0 to infinity is OK */
	if (FUNC0(buf, 0, &val))
		return -EINVAL;

	ctx->min_tx_pkt = val;
	return len;
}