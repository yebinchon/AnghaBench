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
struct usbnet {scalar_t__* data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cdc_ncm_ctx {int timer_interval; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ NSEC_PER_USEC ; 
 struct usbnet* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *d, struct device_attribute *attr, char *buf)
{
	struct usbnet *dev = FUNC0(FUNC2(d));
	struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];

	return FUNC1(buf, "%u\n", ctx->timer_interval / (u32)NSEC_PER_USEC);
}