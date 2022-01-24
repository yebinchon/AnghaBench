#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct usb_device {int dummy; } ;
struct hexline {int addr; int len; int chk; int type; int /*<<< orphan*/  data; } ;
struct firmware {int dummy; } ;
struct TYPE_12__ {int num_adapters; TYPE_5__* adapter; } ;
struct TYPE_11__ {TYPE_4__* fe; } ;
struct TYPE_7__ {int buffersize; } ;
struct TYPE_8__ {TYPE_1__ bulk; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_10__ {TYPE_3__ stream; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REQUEST_GET_VERSION ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int dib0700_device_count ; 
 TYPE_6__* dib0700_devices ; 
 int FUNC1 (struct usb_device*,int) ; 
 int FUNC2 (struct firmware const*,struct hexline*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int nb_packet_buffer_size ; 
 int FUNC9 (struct usb_device*,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*,int) ; 

int FUNC13(struct usb_device *udev, const struct firmware *fw)
{
	struct hexline hx;
	int pos = 0, ret, act_len, i, adap_num;
	u8 *buf;
	u32 fw_version;

	buf = FUNC6(260, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	while ((ret = FUNC2(fw, &hx, &pos)) > 0) {
		FUNC0("writing to address 0x%08x (buffer: 0x%02x %02x)\n",
				hx.addr, hx.len, hx.chk);

		buf[0] = hx.len;
		buf[1] = (hx.addr >> 8) & 0xff;
		buf[2] =  hx.addr       & 0xff;
		buf[3] = hx.type;
		FUNC7(&buf[4],hx.data,hx.len);
		buf[4+hx.len] = hx.chk;

		ret = FUNC9(udev,
			FUNC12(udev, 0x01),
			buf,
			hx.len + 5,
			&act_len,
			1000);

		if (ret < 0) {
			FUNC3("firmware download failed at %d with %d",pos,ret);
			goto out;
		}
	}

	if (ret == 0) {
		/* start the firmware */
		if ((ret = FUNC1(udev, 0x70000000)) == 0) {
			FUNC4("firmware started successfully.");
			FUNC8(500);
		}
	} else
		ret = -EIO;

	/* the number of ts packet has to be at least 1 */
	if (nb_packet_buffer_size < 1)
		nb_packet_buffer_size = 1;

	/* get the firmware version */
	FUNC10(udev, FUNC11(udev, 0),
				  REQUEST_GET_VERSION,
				  USB_TYPE_VENDOR | USB_DIR_IN, 0, 0,
				  buf, 16, USB_CTRL_GET_TIMEOUT);
	fw_version = (buf[8] << 24) | (buf[9] << 16) | (buf[10] << 8) | buf[11];

	/* set the buffer size - DVB-USB is allocating URB buffers
	 * only after the firwmare download was successful */
	for (i = 0; i < dib0700_device_count; i++) {
		for (adap_num = 0; adap_num < dib0700_devices[i].num_adapters;
				adap_num++) {
			if (fw_version >= 0x10201) {
				dib0700_devices[i].adapter[adap_num].fe[0].stream.u.bulk.buffersize = 188*nb_packet_buffer_size;
			} else {
				/* for fw version older than 1.20.1,
				 * the buffersize has to be n times 512 */
				dib0700_devices[i].adapter[adap_num].fe[0].stream.u.bulk.buffersize = ((188*nb_packet_buffer_size+188/2)/512)*512;
				if (dib0700_devices[i].adapter[adap_num].fe[0].stream.u.bulk.buffersize < 512)
					dib0700_devices[i].adapter[adap_num].fe[0].stream.u.bulk.buffersize = 512;
			}
		}
	}
out:
	FUNC5(buf);
	return ret;
}