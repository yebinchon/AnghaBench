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
struct urb {struct go7007_usb* transfer_buffer; } ;
struct go7007_usb {struct urb** audio_urbs; struct urb** video_urbs; struct urb* intr_urb; } ;
struct go7007 {struct go7007_usb* hpi_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct go7007_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 

__attribute__((used)) static void FUNC3(struct go7007 *go)
{
	struct go7007_usb *usb = go->hpi_context;
	struct urb *vurb, *aurb;
	int i;

	if (usb->intr_urb) {
		FUNC2(usb->intr_urb);
		FUNC0(usb->intr_urb->transfer_buffer);
		FUNC1(usb->intr_urb);
	}

	/* Free USB-related structs */
	for (i = 0; i < 8; ++i) {
		vurb = usb->video_urbs[i];
		if (vurb) {
			FUNC2(vurb);
			FUNC0(vurb->transfer_buffer);
			FUNC1(vurb);
		}
		aurb = usb->audio_urbs[i];
		if (aurb) {
			FUNC2(aurb);
			FUNC0(aurb->transfer_buffer);
			FUNC1(aurb);
		}
	}

	FUNC0(go->hpi_context);
}