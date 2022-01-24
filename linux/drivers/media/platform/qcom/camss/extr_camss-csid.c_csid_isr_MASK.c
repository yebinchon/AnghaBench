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
typedef  int u32 ;
struct csid_device {int /*<<< orphan*/  reset_complete; scalar_t__ base; TYPE_1__* camss; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum camss_version { ____Placeholder_camss_version } camss_version ;
struct TYPE_2__ {int version; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev)
{
	struct csid_device *csid = dev;
	enum camss_version ver = csid->camss->version;
	u32 value;

	value = FUNC3(csid->base + FUNC1(ver));
	FUNC4(value, csid->base + FUNC0(ver));

	if ((value >> 11) & 0x1)
		FUNC2(&csid->reset_complete);

	return IRQ_HANDLED;
}