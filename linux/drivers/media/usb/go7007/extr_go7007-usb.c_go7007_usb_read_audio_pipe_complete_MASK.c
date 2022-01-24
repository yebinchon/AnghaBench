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
struct urb {int status; int /*<<< orphan*/  actual_length; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_buffer_length; scalar_t__ context; } ;
struct go7007 {int /*<<< orphan*/  dev; int /*<<< orphan*/  (* audio_deliver ) (struct go7007*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  vidq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct go7007*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct go7007 *go = (struct go7007 *)urb->context;
	int r, status = urb->status;

	if (!FUNC3(&go->vidq))
		return;
	if (status) {
		FUNC0(go->dev, "error in audio pipe: %d\n",
			status);
		return;
	}
	if (urb->actual_length != urb->transfer_buffer_length) {
		FUNC0(go->dev, "short read in audio pipe!\n");
		return;
	}
	if (go->audio_deliver != NULL)
		go->audio_deliver(go, urb->transfer_buffer, urb->actual_length);
	r = FUNC2(urb, GFP_ATOMIC);
	if (r < 0)
		FUNC0(go->dev, "error in audio pipe: %d\n", r);
}