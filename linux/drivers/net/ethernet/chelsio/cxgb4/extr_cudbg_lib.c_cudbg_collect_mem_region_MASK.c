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
typedef  int /*<<< orphan*/  u8 ;
struct cudbg_init {int dummy; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct cudbg_init*,struct cudbg_error*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cudbg_init*,struct cudbg_buffer*,int /*<<< orphan*/ ,unsigned long,struct cudbg_error*) ; 

__attribute__((used)) static int FUNC2(struct cudbg_init *pdbg_init,
				    struct cudbg_buffer *dbg_buff,
				    struct cudbg_error *cudbg_err,
				    u8 mem_type)
{
	unsigned long size = FUNC0(pdbg_init, cudbg_err, mem_type);

	return FUNC1(pdbg_init, dbg_buff, mem_type, size,
				 cudbg_err);
}