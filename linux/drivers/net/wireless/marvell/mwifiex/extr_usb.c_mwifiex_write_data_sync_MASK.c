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
typedef  int u32 ;
struct usb_card_rec {int bulk_out_maxpktsize; int /*<<< orphan*/  udev; } ;
struct mwifiex_adapter {struct usb_card_rec* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mwifiex_adapter *adapter, u8 *pbuf,
				   u32 *len, u8 ep, u32 timeout)
{
	struct usb_card_rec *card = adapter->card;
	int actual_length, ret;

	if (!(*len % card->bulk_out_maxpktsize))
		(*len)++;

	/* Send the data block */
	ret = FUNC1(card->udev, FUNC2(card->udev, ep), pbuf,
			   *len, &actual_length, timeout);
	if (ret) {
		FUNC0(adapter, ERROR,
			    "usb_bulk_msg for tx failed: %d\n", ret);
		return ret;
	}

	*len = actual_length;

	return ret;
}