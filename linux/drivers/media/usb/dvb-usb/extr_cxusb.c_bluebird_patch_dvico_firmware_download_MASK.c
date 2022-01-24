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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  idProduct; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct firmware {int size; int* data; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  CYPRESS_FX2 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int USB_VID_DVICO ; 
 int* dvico_firmware_id_offsets ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int FUNC3 (struct usb_device*,struct firmware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct usb_device *udev,
						  const struct firmware *fw)
{
	int pos;

	for (pos = 0; pos < FUNC0(dvico_firmware_id_offsets); pos++) {
		int idoff = dvico_firmware_id_offsets[pos];

		if (fw->size < idoff + 4)
			continue;

		if (fw->data[idoff] == (USB_VID_DVICO & 0xff) &&
		    fw->data[idoff + 1] == USB_VID_DVICO >> 8) {
			struct firmware new_fw;
			u8 *new_fw_data = FUNC5(fw->size);
			int ret;

			if (!new_fw_data)
				return -ENOMEM;

			FUNC2(new_fw_data, fw->data, fw->size);
			new_fw.size = fw->size;
			new_fw.data = new_fw_data;

			new_fw_data[idoff + 2] =
				FUNC1(udev->descriptor.idProduct) + 1;
			new_fw_data[idoff + 3] =
				FUNC1(udev->descriptor.idProduct) >> 8;

			ret = FUNC3(udev, &new_fw,
							CYPRESS_FX2);
			FUNC4(new_fw_data);
			return ret;
		}
	}

	return -EINVAL;
}