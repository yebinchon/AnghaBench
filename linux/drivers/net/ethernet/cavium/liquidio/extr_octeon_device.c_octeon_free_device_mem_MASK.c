#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int oq; int iq; } ;
struct octeon_device {int octeon_id; struct octeon_device** instr_queue; TYPE_1__ io_qmask; struct octeon_device** droq; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct octeon_device*) ; 
 int FUNC2 (struct octeon_device*) ; 
 int /*<<< orphan*/ ** octeon_device ; 
 int /*<<< orphan*/  octeon_device_count ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*) ; 

void FUNC4(struct octeon_device *oct)
{
	int i;

	for (i = 0; i < FUNC2(oct); i++) {
		if (oct->io_qmask.oq & FUNC0(i))
			FUNC3(oct->droq[i]);
	}

	for (i = 0; i < FUNC1(oct); i++) {
		if (oct->io_qmask.iq & FUNC0(i))
			FUNC3(oct->instr_queue[i]);
	}

	i = oct->octeon_id;
	FUNC3(oct);

	octeon_device[i] = NULL;
	octeon_device_count--;
}