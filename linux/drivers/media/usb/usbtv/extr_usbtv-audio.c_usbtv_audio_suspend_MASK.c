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
struct usbtv {scalar_t__ snd_bulk_urb; int /*<<< orphan*/  snd_stream; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(struct usbtv *usbtv)
{
	if (FUNC0(&usbtv->snd_stream) && usbtv->snd_bulk_urb)
		FUNC1(usbtv->snd_bulk_urb);
}