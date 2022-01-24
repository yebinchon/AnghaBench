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
struct s5p_mfc_regs {int /*<<< orphan*/  d_cpb_buffer_offset; int /*<<< orphan*/  d_cpb_buffer_size; int /*<<< orphan*/  d_cpb_buffer_addr; int /*<<< orphan*/  d_stream_data_size; } ;
struct s5p_mfc_dev {TYPE_1__* variant; struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {int /*<<< orphan*/  inst_no; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_buf_size {unsigned int cpb; } ;
struct TYPE_2__ {struct s5p_mfc_buf_size* buf_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct s5p_mfc_ctx *ctx,
			int buf_addr, unsigned int start_num_byte,
			unsigned int strm_size)
{
	struct s5p_mfc_dev *dev = ctx->dev;
	const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;
	struct s5p_mfc_buf_size *buf_size = dev->variant->buf_size;

	FUNC1();
	FUNC0(2, "inst_no: %d, buf_addr: 0x%08x,\n"
		"buf_size: 0x%08x (%d)\n",
		ctx->inst_no, buf_addr, strm_size, strm_size);
	FUNC3(strm_size, mfc_regs->d_stream_data_size);
	FUNC3(buf_addr, mfc_regs->d_cpb_buffer_addr);
	FUNC3(buf_size->cpb, mfc_regs->d_cpb_buffer_size);
	FUNC3(start_num_byte, mfc_regs->d_cpb_buffer_offset);

	FUNC2();
	return 0;
}