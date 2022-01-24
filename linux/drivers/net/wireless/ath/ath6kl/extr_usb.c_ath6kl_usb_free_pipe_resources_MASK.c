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
struct ath6kl_usb_pipe {scalar_t__ urb_alloc; scalar_t__ urb_cnt; int /*<<< orphan*/  usb_pipe_handle; int /*<<< orphan*/  logical_pipe_num; int /*<<< orphan*/ * ar_usb; } ;
struct ath6kl_urb_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct ath6kl_urb_context* FUNC1 (struct ath6kl_usb_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl_urb_context*) ; 

__attribute__((used)) static void FUNC3(struct ath6kl_usb_pipe *pipe)
{
	struct ath6kl_urb_context *urb_context;

	if (pipe->ar_usb == NULL) {
		/* nothing allocated for this pipe */
		return;
	}

	FUNC0(ATH6KL_DBG_USB,
		   "ath6kl usb: free resources lpipe:%d"
		   "hpipe:0x%X urbs:%d avail:%d\n",
		   pipe->logical_pipe_num, pipe->usb_pipe_handle,
		   pipe->urb_alloc, pipe->urb_cnt);

	if (pipe->urb_alloc != pipe->urb_cnt) {
		FUNC0(ATH6KL_DBG_USB,
			   "ath6kl usb: urb leak! lpipe:%d"
			   "hpipe:0x%X urbs:%d avail:%d\n",
			   pipe->logical_pipe_num, pipe->usb_pipe_handle,
			   pipe->urb_alloc, pipe->urb_cnt);
	}

	while (true) {
		urb_context = FUNC1(pipe);
		if (urb_context == NULL)
			break;
		FUNC2(urb_context);
	}
}