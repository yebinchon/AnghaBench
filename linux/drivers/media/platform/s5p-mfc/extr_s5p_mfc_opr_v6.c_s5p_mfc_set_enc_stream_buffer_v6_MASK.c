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
struct s5p_mfc_regs {int /*<<< orphan*/  e_stream_buffer_size; int /*<<< orphan*/  e_stream_buffer_addr; } ;
struct s5p_mfc_dev {struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct s5p_mfc_ctx *ctx,
		unsigned long addr, unsigned int size)
{
	struct s5p_mfc_dev *dev = ctx->dev;
	const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;

	FUNC1(addr, mfc_regs->e_stream_buffer_addr); /* 16B align */
	FUNC1(size, mfc_regs->e_stream_buffer_size);

	FUNC0(2, "stream buf addr: 0x%08lx, size: 0x%x\n",
		  addr, size);

	return 0;
}