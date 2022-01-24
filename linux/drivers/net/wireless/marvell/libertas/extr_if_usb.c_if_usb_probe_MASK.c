#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct usb_interface {int /*<<< orphan*/  dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  bDeviceProtocol; int /*<<< orphan*/  bDeviceSubClass; int /*<<< orphan*/  bDeviceClass; int /*<<< orphan*/  bcdUSB; } ;
struct usb_device {int /*<<< orphan*/  dev; TYPE_3__ descriptor; } ;
struct lbs_private {int is_polling; int /*<<< orphan*/  reset_card; int /*<<< orphan*/ * reset_deep_sleep_wakeup; int /*<<< orphan*/ * exit_deep_sleep; int /*<<< orphan*/ * enter_deep_sleep; int /*<<< orphan*/  hw_host_to_card; } ;
struct if_usb_card {scalar_t__ model; int /*<<< orphan*/  boot2_version; struct lbs_private* priv; int /*<<< orphan*/  ep_out_buf; void* tx_urb; void* rx_urb; void* ep_in_size; void* ep_out_size; void* ep_out; void* ep_in; struct usb_device* udev; int /*<<< orphan*/  fw_wq; int /*<<< orphan*/  fw_timeout; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct lbs_private*) ; 
 int /*<<< orphan*/  MRVDRV_ETH_TX_PACKET_BUFFER_SIZE ; 
 int FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  fw_table ; 
 int /*<<< orphan*/  FUNC2 (struct if_usb_card*) ; 
 int /*<<< orphan*/  if_usb_fw_timeo ; 
 int /*<<< orphan*/  if_usb_host_to_card ; 
 int /*<<< orphan*/  if_usb_prog_firmware ; 
 int /*<<< orphan*/  FUNC3 (struct if_usb_card*) ; 
 int /*<<< orphan*/  if_usb_reset_olpc_card ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct if_usb_card* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct lbs_private* FUNC8 (struct if_usb_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC10 (struct lbs_private*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct lbs_private*) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC17 (struct usb_endpoint_descriptor*) ; 
 void* FUNC18 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC19 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_interface*,struct if_usb_card*) ; 

__attribute__((used)) static int FUNC21(struct usb_interface *intf,
			const struct usb_device_id *id)
{
	struct usb_device *udev;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	struct lbs_private *priv;
	struct if_usb_card *cardp;
	int r = -ENOMEM;
	int i;

	udev = FUNC5(intf);

	cardp = FUNC7(sizeof(struct if_usb_card), GFP_KERNEL);
	if (!cardp)
		goto error;

	FUNC14(&cardp->fw_timeout, if_usb_fw_timeo, 0);
	FUNC4(&cardp->fw_wq);

	cardp->udev = udev;
	cardp->model = (uint32_t) id->driver_info;
	iface_desc = intf->cur_altsetting;

	FUNC9(&udev->dev, "bcdUSB = 0x%X bDeviceClass = 0x%X"
		     " bDeviceSubClass = 0x%X, bDeviceProtocol = 0x%X\n",
		     FUNC12(udev->descriptor.bcdUSB),
		     udev->descriptor.bDeviceClass,
		     udev->descriptor.bDeviceSubClass,
		     udev->descriptor.bDeviceProtocol);

	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;
		if (FUNC16(endpoint)) {
			cardp->ep_in_size = FUNC12(endpoint->wMaxPacketSize);
			cardp->ep_in = FUNC18(endpoint);

			FUNC9(&udev->dev, "in_endpoint = %d\n", cardp->ep_in);
			FUNC9(&udev->dev, "Bulk in size is %d\n", cardp->ep_in_size);

		} else if (FUNC17(endpoint)) {
			cardp->ep_out_size = FUNC12(endpoint->wMaxPacketSize);
			cardp->ep_out = FUNC18(endpoint);

			FUNC9(&udev->dev, "out_endpoint = %d\n", cardp->ep_out);
			FUNC9(&udev->dev, "Bulk out size is %d\n", cardp->ep_out_size);
		}
	}
	if (!cardp->ep_out_size || !cardp->ep_in_size) {
		FUNC9(&udev->dev, "Endpoints not found\n");
		goto dealloc;
	}
	if (!(cardp->rx_urb = FUNC15(0, GFP_KERNEL))) {
		FUNC9(&udev->dev, "Rx URB allocation failed\n");
		goto dealloc;
	}
	if (!(cardp->tx_urb = FUNC15(0, GFP_KERNEL))) {
		FUNC9(&udev->dev, "Tx URB allocation failed\n");
		goto dealloc;
	}
	cardp->ep_out_buf = FUNC6(MRVDRV_ETH_TX_PACKET_BUFFER_SIZE, GFP_KERNEL);
	if (!cardp->ep_out_buf) {
		FUNC9(&udev->dev, "Could not allocate buffer\n");
		goto dealloc;
	}

	priv = FUNC8(cardp, &intf->dev);
	if (FUNC0(priv)) {
		r = FUNC1(priv);
		goto err_add_card;
	}

	cardp->priv = priv;

	priv->hw_host_to_card = if_usb_host_to_card;
	priv->enter_deep_sleep = NULL;
	priv->exit_deep_sleep = NULL;
	priv->reset_deep_sleep_wakeup = NULL;
	priv->is_polling = false;
#ifdef CONFIG_OLPC
	if (machine_is_olpc())
		priv->reset_card = if_usb_reset_olpc_card;
#endif

	cardp->boot2_version = udev->descriptor.bcdDevice;

	FUNC19(udev);
	FUNC20(intf, cardp);

	r = FUNC10(priv, &udev->dev, cardp->model,
				   fw_table, if_usb_prog_firmware);
	if (r)
		goto err_get_fw;

	return 0;

err_get_fw:
	FUNC11(priv);
err_add_card:
	FUNC3(cardp);
dealloc:
	FUNC2(cardp);

error:
	return r;
}