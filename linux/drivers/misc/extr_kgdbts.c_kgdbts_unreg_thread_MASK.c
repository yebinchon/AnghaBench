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

/* Variables and functions */
 scalar_t__ configured ; 
 int /*<<< orphan*/  final_ack ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kgdbts_io_ops ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void *ptr)
{
	/* Wait until the tests are complete and then ungresiter the I/O
	 * driver.
	 */
	while (!final_ack)
		FUNC1(1500);
	/* Pause for any other threads to exit after final ack. */
	FUNC1(1000);
	if (configured)
		FUNC0(&kgdbts_io_ops);
	configured = 0;

	return 0;
}