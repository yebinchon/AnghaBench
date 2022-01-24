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
struct usb_ctrlrequest {void* wLength; void* wIndex; void* wValue; void* bRequest; void* bRequestType; } ;
struct kaweth_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  net; } ;
typedef  void* __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,struct usb_ctrlrequest*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_ctrlrequest*) ; 
 struct usb_ctrlrequest* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct kaweth_device *kaweth,
			  unsigned int pipe,
			  __u8 request,
			  __u8 requesttype,
			  __u16 value,
			  __u16 index,
			  void *data,
			  __u16 size,
			  int timeout)
{
	struct usb_ctrlrequest *dr;
	int retval;

	if(FUNC1()) {
		FUNC5(kaweth->net, "in_interrupt()\n");
		return -EBUSY;
	}

	dr = FUNC4(sizeof(struct usb_ctrlrequest), GFP_ATOMIC);
	if (!dr)
		return -ENOMEM;

	dr->bRequestType = requesttype;
	dr->bRequest = request;
	dr->wValue = FUNC0(value);
	dr->wIndex = FUNC0(index);
	dr->wLength = FUNC0(size);

	retval = FUNC2(kaweth->dev,
					     pipe,
					     dr,
					     data,
					     size,
					     timeout);

	FUNC3(dr);
	return retval;
}