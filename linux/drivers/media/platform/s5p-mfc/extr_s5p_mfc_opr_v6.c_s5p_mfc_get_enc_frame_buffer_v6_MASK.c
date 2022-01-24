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
struct s5p_mfc_regs {int /*<<< orphan*/  e_recon_chroma_dpb_addr; int /*<<< orphan*/  e_recon_luma_dpb_addr; int /*<<< orphan*/  e_encoded_source_second_plane_addr; int /*<<< orphan*/  e_encoded_source_first_plane_addr; } ;
struct s5p_mfc_dev {struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long,...) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct s5p_mfc_ctx *ctx,
		unsigned long *y_addr, unsigned long *c_addr)
{
	struct s5p_mfc_dev *dev = ctx->dev;
	const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;
	unsigned long enc_recon_y_addr, enc_recon_c_addr;

	*y_addr = FUNC1(mfc_regs->e_encoded_source_first_plane_addr);
	*c_addr = FUNC1(mfc_regs->e_encoded_source_second_plane_addr);

	enc_recon_y_addr = FUNC1(mfc_regs->e_recon_luma_dpb_addr);
	enc_recon_c_addr = FUNC1(mfc_regs->e_recon_chroma_dpb_addr);

	FUNC0(2, "recon y addr: 0x%08lx y_addr: 0x%08lx\n", enc_recon_y_addr, *y_addr);
	FUNC0(2, "recon c addr: 0x%08lx\n", enc_recon_c_addr);
}