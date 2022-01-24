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
struct usb_card_rec {scalar_t__ usb_boot_state; } ;
struct mwifiex_fw_image {int dummy; } ;
struct mwifiex_adapter {scalar_t__ card; } ;

/* Variables and functions */
 scalar_t__ USB8XXX_FW_DNLD ; 
 int FUNC0 (struct mwifiex_adapter*,struct mwifiex_fw_image*) ; 
 int FUNC1 (struct mwifiex_adapter*) ; 
 int FUNC2 (struct mwifiex_adapter*) ; 

__attribute__((used)) static int FUNC3(struct mwifiex_adapter *adapter,
			struct mwifiex_fw_image *fw)
{
	int ret;
	struct usb_card_rec *card = (struct usb_card_rec *)adapter->card;

	if (card->usb_boot_state == USB8XXX_FW_DNLD) {
		ret = FUNC0(adapter, fw);
		if (ret)
			return -1;

		/* Boot state changes after successful firmware download */
		if (card->usb_boot_state == USB8XXX_FW_DNLD)
			return -1;
	}

	ret = FUNC1(adapter);
	if (!ret)
		ret = FUNC2(adapter);

	return ret;
}