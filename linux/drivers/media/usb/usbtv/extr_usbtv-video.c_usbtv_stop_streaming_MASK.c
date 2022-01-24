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
struct vb2_queue {int dummy; } ;
struct usbtv {scalar_t__ udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbtv*) ; 
 struct usbtv* FUNC1 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC2(struct vb2_queue *vq)
{
	struct usbtv *usbtv = FUNC1(vq);

	if (usbtv->udev)
		FUNC0(usbtv);
}