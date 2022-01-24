#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ out; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; TYPE_1__ buf; } ;
struct TYPE_5__ {TYPE_3__ data; } ;
struct nand_op_instr {scalar_t__ type; TYPE_2__ ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NAND_OP_DATA_OUT_INSTR ; 
 scalar_t__ FUNC0 (int) ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void *
FUNC3(const struct nand_op_instr *instr)
{
	if (FUNC0(instr->type != NAND_OP_DATA_OUT_INSTR))
		return NULL;

	if (FUNC2(instr->ctx.data.buf.out))
		return (void *)instr->ctx.data.buf.out;

	return FUNC1(instr->ctx.data.buf.out,
		       instr->ctx.data.len, GFP_KERNEL);
}