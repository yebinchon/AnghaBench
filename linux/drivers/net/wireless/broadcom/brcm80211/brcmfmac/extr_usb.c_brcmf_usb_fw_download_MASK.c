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
typedef  int /*<<< orphan*/  u8 ;
struct brcmf_usbdev_info {int /*<<< orphan*/  image_len; scalar_t__ image; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct brcmf_usbdev_info*) ; 
 int FUNC3 (struct brcmf_usbdev_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct brcmf_usbdev_info *devinfo)
{
	int err;

	FUNC0(USB, "Enter\n");
	if (devinfo == NULL)
		return -ENODEV;

	if (!devinfo->image) {
		FUNC1("No firmware!\n");
		return -ENOENT;
	}

	err = FUNC3(devinfo,
		(u8 *)devinfo->image, devinfo->image_len);
	if (err == 0)
		err = FUNC2(devinfo);
	return err;
}