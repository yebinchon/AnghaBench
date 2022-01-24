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
struct ath6kl_usb_pipe {int /*<<< orphan*/  urb_alloc; int /*<<< orphan*/  usb_pipe_handle; int /*<<< orphan*/  logical_pipe_num; int /*<<< orphan*/  urb_submitted; int /*<<< orphan*/  urb_list_head; } ;
struct ath6kl_urb_context {struct ath6kl_usb_pipe* pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_USB ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl_usb_pipe*,struct ath6kl_urb_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ath6kl_urb_context* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ath6kl_usb_pipe *pipe,
					   int urb_cnt)
{
	struct ath6kl_urb_context *urb_context;
	int status = 0, i;

	FUNC0(&pipe->urb_list_head);
	FUNC3(&pipe->urb_submitted);

	for (i = 0; i < urb_cnt; i++) {
		urb_context = FUNC4(sizeof(struct ath6kl_urb_context),
				      GFP_KERNEL);
		if (urb_context == NULL) {
			status = -ENOMEM;
			goto fail_alloc_pipe_resources;
		}

		urb_context->pipe = pipe;

		/*
		 * we are only allocate the urb contexts here, the actual URB
		 * is allocated from the kernel as needed to do a transaction
		 */
		pipe->urb_alloc++;
		FUNC2(pipe, urb_context);
	}

	FUNC1(ATH6KL_DBG_USB,
		   "ath6kl usb: alloc resources lpipe:%d hpipe:0x%X urbs:%d\n",
		   pipe->logical_pipe_num, pipe->usb_pipe_handle,
		   pipe->urb_alloc);

fail_alloc_pipe_resources:
	return status;
}