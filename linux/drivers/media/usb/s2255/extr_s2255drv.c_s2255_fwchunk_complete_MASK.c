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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct urb {int /*<<< orphan*/  status; struct usb_device* dev; struct s2255_fw* context; } ;
struct s2255_fw {int fw_loaded; int fw_size; int /*<<< orphan*/  fw_state; int /*<<< orphan*/  wait_fw; int /*<<< orphan*/ * fw_urb; int /*<<< orphan*/  pfw_data; TYPE_1__* fw; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int CHUNK_SIZE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  S2255_FW_FAILED ; 
 int /*<<< orphan*/  S2255_FW_LOADED_DSPWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void (*) (struct urb*),struct s2255_fw*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct urb *urb)
{
	struct s2255_fw *data = urb->context;
	struct usb_device *udev = urb->dev;
	int len;
	if (urb->status) {
		FUNC1(&udev->dev, "URB failed with status %d\n", urb->status);
		FUNC0(&data->fw_state, S2255_FW_FAILED);
		/* wake up anything waiting for the firmware */
		FUNC8(&data->wait_fw);
		return;
	}
	if (data->fw_urb == NULL) {
		FUNC4(&udev->dev, "disconnected\n");
		FUNC0(&data->fw_state, S2255_FW_FAILED);
		/* wake up anything waiting for the firmware */
		FUNC8(&data->wait_fw);
		return;
	}
#define CHUNK_SIZE 512
	/* all USB transfers must be done with continuous kernel memory.
	   can't allocate more than 128k in current linux kernel, so
	   upload the firmware in chunks
	 */
	if (data->fw_loaded < data->fw_size) {
		len = (data->fw_loaded + CHUNK_SIZE) > data->fw_size ?
		    data->fw_size % CHUNK_SIZE : CHUNK_SIZE;

		if (len < CHUNK_SIZE)
			FUNC3(data->pfw_data, 0, CHUNK_SIZE);

		FUNC2(data->pfw_data,
		       (char *) data->fw->data + data->fw_loaded, len);

		FUNC5(data->fw_urb, udev, FUNC6(udev, 2),
				  data->pfw_data, CHUNK_SIZE,
				  s2255_fwchunk_complete, data);
		if (FUNC7(data->fw_urb, GFP_ATOMIC) < 0) {
			FUNC1(&udev->dev, "failed submit URB\n");
			FUNC0(&data->fw_state, S2255_FW_FAILED);
			/* wake up anything waiting for the firmware */
			FUNC8(&data->wait_fw);
			return;
		}
		data->fw_loaded += len;
	} else
		FUNC0(&data->fw_state, S2255_FW_LOADED_DSPWAIT);
	return;

}