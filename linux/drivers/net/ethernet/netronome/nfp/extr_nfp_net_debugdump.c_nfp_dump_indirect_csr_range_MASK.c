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
typedef  int u32 ;
struct nfp_pf {int /*<<< orphan*/  cpp; } ;
struct TYPE_3__ {int /*<<< orphan*/  dump_length; int /*<<< orphan*/  offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct nfp_dumpspec_csr {TYPE_1__ cpp; int /*<<< orphan*/  register_width; TYPE_2__ tl; } ;
struct nfp_dump_state {struct nfp_dump_csr* p; } ;
struct nfp_dump_csr {void* error_offset; void* error; int /*<<< orphan*/  register_width; TYPE_1__ cpp; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BITS_PER_BYTE ; 
 int /*<<< orphan*/  EINVAL ; 
 int NFP_IND_NUM_CONTEXTS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int,int,struct nfp_dump_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_dumpspec_csr*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,struct nfp_dump_state*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct nfp_dumpspec_csr*,int,int,void*) ; 

__attribute__((used)) static int
FUNC7(struct nfp_pf *pf,
			    struct nfp_dumpspec_csr *spec_csr,
			    struct nfp_dump_state *dump)
{
	struct nfp_dump_csr *dump_header = dump->p;
	u32 reg_sz, header_size, total_size;
	u32 cpp_rd_addr, max_rd_addr;
	u32 reg_data_length;
	void *dest;
	int err;

	if (!FUNC4(spec_csr))
		return FUNC5(&spec_csr->tl, -EINVAL, dump);

	reg_sz = FUNC1(spec_csr->register_width) / BITS_PER_BYTE;
	header_size = FUNC0(sizeof(*dump_header));
	reg_data_length = FUNC1(spec_csr->cpp.dump_length) *
			  NFP_IND_NUM_CONTEXTS;
	total_size = header_size + FUNC0(reg_data_length);
	dest = dump->p + header_size;

	err = FUNC3(FUNC1(spec_csr->tl.type), total_size, dump);
	if (err)
		return err;

	dump_header->cpp = spec_csr->cpp;
	dump_header->register_width = spec_csr->register_width;

	cpp_rd_addr = FUNC1(spec_csr->cpp.offset);
	max_rd_addr = cpp_rd_addr + FUNC1(spec_csr->cpp.dump_length);
	while (cpp_rd_addr < max_rd_addr) {
		err = FUNC6(pf->cpp, spec_csr,
						    cpp_rd_addr, reg_sz, dest);
		if (err) {
			dump_header->error = FUNC2(err);
			dump_header->error_offset = FUNC2(cpp_rd_addr);
			break;
		}
		cpp_rd_addr += reg_sz;
		dest += reg_sz * NFP_IND_NUM_CONTEXTS;
	}

	return 0;
}