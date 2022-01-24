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
struct cudbg_init {scalar_t__ compress_type; } ;
struct cudbg_buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ CUDBG_COMPRESSION_NONE ; 
 int FUNC0 (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct cudbg_init*,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC3(struct cudbg_init *pdbg_init,
					struct cudbg_buffer *pin_buff,
					struct cudbg_buffer *dbg_buff)
{
	int rc = 0;

	if (pdbg_init->compress_type == CUDBG_COMPRESSION_NONE) {
		FUNC2(pin_buff, dbg_buff);
	} else {
		rc = FUNC0(pdbg_init, pin_buff, dbg_buff);
		if (rc)
			goto out;
	}

out:
	FUNC1(pdbg_init, pin_buff);
	return rc;
}