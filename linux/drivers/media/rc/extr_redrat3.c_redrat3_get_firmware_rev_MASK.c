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
struct redrat3_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  RR3_FW_VERSION ; 
 scalar_t__ RR3_FW_VERSION_LEN ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct redrat3_dev *rr3)
{
	int rc;
	char *buffer;

	buffer = FUNC2(RR3_FW_VERSION_LEN + 1, sizeof(*buffer), GFP_KERNEL);
	if (!buffer)
		return;

	rc = FUNC4(rr3->udev, FUNC5(rr3->udev, 0),
			     RR3_FW_VERSION,
			     USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
			     0, 0, buffer, RR3_FW_VERSION_LEN, HZ * 5);

	if (rc >= 0)
		FUNC1(rr3->dev, "Firmware rev: %s", buffer);
	else
		FUNC0(rr3->dev, "Problem fetching firmware ID\n");

	FUNC3(buffer);
}