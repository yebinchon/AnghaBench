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
struct urb {int status; scalar_t__ actual_length; scalar_t__ transfer_buffer_length; scalar_t__ transfer_buffer; scalar_t__ context; } ;
struct go7007 {scalar_t__ status; int interrupt_available; int /*<<< orphan*/  interrupt_waitq; void* interrupt_data; void* interrupt_value; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ESHUTDOWN ; 
 scalar_t__ STATUS_SHUTDOWN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct go7007 *go = (struct go7007 *)urb->context;
	__le16 *regs = (__le16 *)urb->transfer_buffer;
	int status = urb->status;

	if (status) {
		if (status != -ESHUTDOWN &&
				go->status != STATUS_SHUTDOWN) {
			FUNC1(go->dev, "error in read interrupt: %d\n", urb->status);
		} else {
			FUNC3(&go->interrupt_waitq);
			return;
		}
	} else if (urb->actual_length != urb->transfer_buffer_length) {
		FUNC1(go->dev, "short read in interrupt pipe!\n");
	} else {
		go->interrupt_available = 1;
		go->interrupt_data = FUNC0(regs[0]);
		go->interrupt_value = FUNC0(regs[1]);
		FUNC2("ReadInterrupt: %04x %04x\n",
				go->interrupt_value, go->interrupt_data);
	}

	FUNC3(&go->interrupt_waitq);
}