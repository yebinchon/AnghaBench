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
struct ttusb {int /*<<< orphan*/  iso_buffer; int /*<<< orphan*/ * iso_urb; } ;

/* Variables and functions */
 int ISO_BUF_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ttusb *ttusb)
{
	int i;

	for (i = 0; i < ISO_BUF_COUNT; i++)
		FUNC1(ttusb->iso_urb[i]);
	FUNC0(ttusb->iso_buffer);
}