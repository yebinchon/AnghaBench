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
struct usb_device {int dummy; } ;
struct smsusb_device_t {struct usb_device* udev; } ;
struct sms_board {int /*<<< orphan*/  name; } ;
typedef  void media_device ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct sms_board* FUNC6 (int) ; 

__attribute__((used)) static void *FUNC7(struct smsusb_device_t *dev,
					int board_id)
{
#ifdef CONFIG_MEDIA_CONTROLLER_DVB
	struct media_device *mdev;
	struct usb_device *udev = dev->udev;
	struct sms_board *board = sms_get_board(board_id);
	int ret;

	mdev = kzalloc(sizeof(*mdev), GFP_KERNEL);
	if (!mdev)
		return NULL;

	media_device_usb_init(mdev, udev, board->name);

	ret = media_device_register(mdev);
	if (ret) {
		media_device_cleanup(mdev);
		kfree(mdev);
		return NULL;
	}

	pr_info("media controller created\n");

	return mdev;
#else
	return NULL;
#endif
}