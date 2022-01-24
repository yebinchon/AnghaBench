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
struct gru_control_block_status {scalar_t__ istatus; } ;
struct control_block_extended_exc_detail {int opc; int exopc; int ecause; int /*<<< orphan*/  exceptdet1; int /*<<< orphan*/  exceptdet0; } ;

/* Variables and functions */
 scalar_t__ CBS_EXCEPTION ; 
 int /*<<< orphan*/  FUNC0 (void*,struct control_block_extended_exc_detail*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 

__attribute__((used)) static char *FUNC3(int ret, void *cb,
					     char *buf, int size)
{
	struct gru_control_block_status *gen = (void *)cb;
	struct control_block_extended_exc_detail excdet;

	if (ret > 0 && gen->istatus == CBS_EXCEPTION) {
		FUNC0(cb, &excdet);
		FUNC2(buf, size,
			"GRU:%d exception: cb %p, opc %d, exopc %d, ecause 0x%x,"
			"excdet0 0x%lx, excdet1 0x%x", FUNC1(),
			gen, excdet.opc, excdet.exopc, excdet.ecause,
			excdet.exceptdet0, excdet.exceptdet1);
	} else {
		FUNC2(buf, size, "No exception");
	}
	return buf;
}