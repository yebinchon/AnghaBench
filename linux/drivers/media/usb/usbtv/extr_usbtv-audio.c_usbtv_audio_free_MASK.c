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
struct usbtv {int /*<<< orphan*/ * snd; scalar_t__ udev; int /*<<< orphan*/  snd_trigger; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct usbtv *usbtv)
{
	FUNC0(&usbtv->snd_trigger);

	if (usbtv->snd && usbtv->udev) {
		FUNC1(usbtv->snd);
		usbtv->snd = NULL;
	}
}