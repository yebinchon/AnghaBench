#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {int /*<<< orphan*/  code; } ;
struct nfp_nsp_command_buf_arg {scalar_t__ out_size; scalar_t__ in_size; TYPE_2__ arg; scalar_t__ out_buf; } ;
struct TYPE_3__ {int minor; unsigned int major; } ;
struct nfp_nsp {int /*<<< orphan*/  res; TYPE_1__ ver; struct nfp_cpp* cpp; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NSP_DFLT_BUFFER_CONFIG ; 
 int /*<<< orphan*/  NSP_DFLT_BUFFER_DMA_CHUNK_ORDER ; 
 int /*<<< orphan*/  NSP_DFLT_BUFFER_SIZE_4KB ; 
 int /*<<< orphan*/  NSP_DFLT_BUFFER_SIZE_MB ; 
 unsigned int SZ_1M ; 
 unsigned int SZ_4K ; 
 unsigned int FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct nfp_cpp*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_cpp*,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC5 (struct nfp_nsp*,struct nfp_nsp_command_buf_arg*) ; 
 int FUNC6 (struct nfp_nsp*,struct nfp_nsp_command_buf_arg*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct nfp_nsp *nsp, struct nfp_nsp_command_buf_arg *arg)
{
	unsigned int dma_order, def_size, max_size;
	struct nfp_cpp *cpp = nsp->cpp;
	u64 reg;
	int err;

	if (nsp->ver.minor < 13) {
		FUNC4(cpp, "NSP: Code 0x%04x with buffer not supported (ABI %hu.%hu)\n",
			arg->arg.code, nsp->ver.major, nsp->ver.minor);
		return -EOPNOTSUPP;
	}

	err = FUNC3(cpp, FUNC8(nsp->res),
			    FUNC7(nsp->res) +
			    NSP_DFLT_BUFFER_CONFIG,
			    &reg);
	if (err < 0)
		return err;

	/* Zero out undefined part of the out buffer */
	if (arg->out_buf && arg->out_size && arg->out_size > arg->in_size)
		FUNC2(arg->out_buf, 0, arg->out_size - arg->in_size);

	max_size = FUNC1(arg->in_size, arg->out_size);
	def_size = FUNC0(NSP_DFLT_BUFFER_SIZE_MB, reg) * SZ_1M +
		   FUNC0(NSP_DFLT_BUFFER_SIZE_4KB, reg) * SZ_4K;
	dma_order = FUNC0(NSP_DFLT_BUFFER_DMA_CHUNK_ORDER, reg);
	if (def_size >= max_size) {
		return FUNC5(nsp, arg);
	} else if (!dma_order) {
		FUNC4(cpp, "NSP: default buffer too small for command 0x%04x (%u < %u)\n",
			arg->arg.code, def_size, max_size);
		return -EINVAL;
	}

	return FUNC6(nsp, arg, max_size, dma_order);
}