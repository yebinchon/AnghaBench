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
struct hso_shared_int {int /*<<< orphan*/  shared_int_lock; struct hso_shared_int* shared_intr_buf; int /*<<< orphan*/  shared_intr_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hso_shared_int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hso_shared_int *mux)
{
	FUNC2(mux->shared_intr_urb);
	FUNC0(mux->shared_intr_buf);
	FUNC1(&mux->shared_int_lock);
	FUNC0(mux);
}