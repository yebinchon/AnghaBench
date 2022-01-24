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
struct redrat3_dev {int /*<<< orphan*/  transmitting; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct redrat3_dev *rr3, int code)
{
	if (!rr3->transmitting && (code != 0x40))
		FUNC0(rr3->dev, "fw error code 0x%02x: ", code);

	switch (code) {
	case 0x00:
		FUNC1("No Error\n");
		break;

	/* Codes 0x20 through 0x2f are IR Firmware Errors */
	case 0x20:
		FUNC1("Initial signal pulse not long enough to measure carrier frequency\n");
		break;
	case 0x21:
		FUNC1("Not enough length values allocated for signal\n");
		break;
	case 0x22:
		FUNC1("Not enough memory allocated for signal data\n");
		break;
	case 0x23:
		FUNC1("Too many signal repeats\n");
		break;
	case 0x28:
		FUNC1("Insufficient memory available for IR signal data memory allocation\n");
		break;
	case 0x29:
		FUNC1("Insufficient memory available for IrDa signal data memory allocation\n");
		break;

	/* Codes 0x30 through 0x3f are USB Firmware Errors */
	case 0x30:
		FUNC1("Insufficient memory available for bulk transfer structure\n");
		break;

	/*
	 * Other error codes... These are primarily errors that can occur in
	 * the control messages sent to the redrat
	 */
	case 0x40:
		if (!rr3->transmitting)
			FUNC1("Signal capture has been terminated\n");
		break;
	case 0x41:
		FUNC1("Attempt to set/get and unknown signal I/O algorithm parameter\n");
		break;
	case 0x42:
		FUNC1("Signal capture already started\n");
		break;

	default:
		FUNC1("Unknown Error\n");
		break;
	}
}