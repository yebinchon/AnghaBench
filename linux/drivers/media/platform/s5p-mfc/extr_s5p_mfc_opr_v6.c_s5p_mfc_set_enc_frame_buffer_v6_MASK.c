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
struct s5p_mfc_regs {int /*<<< orphan*/  e_source_second_plane_addr; int /*<<< orphan*/  e_source_first_plane_addr; } ;
struct s5p_mfc_dev {struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct s5p_mfc_ctx *ctx,
		unsigned long y_addr, unsigned long c_addr)
{
	struct s5p_mfc_dev *dev = ctx->dev;
	const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;

	FUNC1(y_addr, mfc_regs->e_source_first_plane_addr);
	FUNC1(c_addr, mfc_regs->e_source_second_plane_addr);

	FUNC0(2, "enc src y buf addr: 0x%08lx\n", y_addr);
	FUNC0(2, "enc src c buf addr: 0x%08lx\n", c_addr);
}