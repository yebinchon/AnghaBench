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
struct urb {int num_sgs; scalar_t__ transfer_buffer; int /*<<< orphan*/ * sg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 

__attribute__((used)) static void FUNC3(struct urb *urb)
{
	int i;

	for (i = 0; i < urb->num_sgs; i++)
		FUNC1(FUNC0(&urb->sg[i]));

	if (urb->transfer_buffer)
		FUNC1(urb->transfer_buffer);

	FUNC2(urb);
}