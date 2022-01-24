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
struct idt_89hpesx_dev {TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IDT_VIDDID_CSR ; 
 int IDT_VID_MASK ; 
 int PCI_VENDOR_ID_IDT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int FUNC2 (struct idt_89hpesx_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct idt_89hpesx_dev *pdev)
{
	struct device *dev = &pdev->client->dev;
	u32 viddid;
	int ret;

	/* Read VID and DID directly from IDT memory space */
	ret = FUNC2(pdev, IDT_VIDDID_CSR, &viddid);
	if (ret != 0) {
		FUNC0(dev, "Failed to read VID/DID");
		return ret;
	}

	/* Check whether it's IDT device */
	if ((viddid & IDT_VID_MASK) != PCI_VENDOR_ID_IDT) {
		FUNC0(dev, "Got unsupported VID/DID: 0x%08x", viddid);
		return -ENODEV;
	}

	FUNC1(dev, "Found IDT 89HPES device VID:0x%04x, DID:0x%04x",
		(viddid & IDT_VID_MASK), (viddid >> 16));

	return 0;
}