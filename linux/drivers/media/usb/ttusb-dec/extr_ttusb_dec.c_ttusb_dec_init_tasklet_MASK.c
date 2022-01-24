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
struct ttusb_dec {int /*<<< orphan*/  urb_tasklet; int /*<<< orphan*/  urb_frame_list; int /*<<< orphan*/  urb_frame_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  ttusb_dec_process_urb_frame_list ; 

__attribute__((used)) static void FUNC3(struct ttusb_dec *dec)
{
	FUNC1(&dec->urb_frame_list_lock);
	FUNC0(&dec->urb_frame_list);
	FUNC2(&dec->urb_tasklet, ttusb_dec_process_urb_frame_list,
		     (unsigned long)dec);
}