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
typedef  int u8 ;
struct ttusb_dec {int interface; int /*<<< orphan*/  udev; } ;
typedef  enum ttusb_dec_interface { ____Placeholder_ttusb_dec_interface } ttusb_dec_interface ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
#define  TTUSB_DEC_INTERFACE_IN 130 
#define  TTUSB_DEC_INTERFACE_INITIAL 129 
#define  TTUSB_DEC_INTERFACE_OUT 128 
 int FUNC0 (struct ttusb_dec*,int,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct ttusb_dec *dec,
				   enum ttusb_dec_interface interface)
{
	int result = 0;
	u8 b[] = { 0x05 };

	if (interface != dec->interface) {
		switch (interface) {
		case TTUSB_DEC_INTERFACE_INITIAL:
			result = FUNC1(dec->udev, 0, 0);
			break;
		case TTUSB_DEC_INTERFACE_IN:
			result = FUNC0(dec, 0x80, sizeof(b),
							b, NULL, NULL);
			if (result)
				return result;
			result = FUNC1(dec->udev, 0, 8);
			break;
		case TTUSB_DEC_INTERFACE_OUT:
			result = FUNC1(dec->udev, 0, 1);
			break;
		}

		if (result)
			return result;

		dec->interface = interface;
	}

	return 0;
}