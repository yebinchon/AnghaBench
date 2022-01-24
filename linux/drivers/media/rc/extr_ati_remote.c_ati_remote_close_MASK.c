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
struct ati_remote {scalar_t__ users; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  irq_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ati_remote *ati_remote)
{
	FUNC0(&ati_remote->open_mutex);
	if (--ati_remote->users == 0)
		FUNC2(ati_remote->irq_urb);
	FUNC1(&ati_remote->open_mutex);
}