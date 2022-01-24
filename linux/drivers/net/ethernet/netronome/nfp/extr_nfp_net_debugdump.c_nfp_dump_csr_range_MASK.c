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
struct TYPE_3__ {int /*<<< orphan*/  cpp_id; int /*<<< orphan*/  dump_length; int /*<<< orphan*/  offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct nfp_dumpspec_csr {TYPE_1__ cpp; int /*<<< orphan*/  register_width; TYPE_2__ tl; } ;
struct nfp_dump_state {struct nfp_dump_csr* p; } ;
struct nfp_dump_csr {void* error_offset; void* error; int /*<<< orphan*/  register_width; TYPE_1__ cpp; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BITS_PER_BYTE ; 
 int /*<<< orphan*/  EINVAL ; 
 int EIO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int,struct nfp_dump_state*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_dumpspec_csr*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,struct nfp_dump_state*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int
FUNC10(struct nfp_pf *pf, struct nfp_dumpspec_csr *spec_csr,
		   struct nfp_dump_state *dump)
{
	struct nfp_dump_csr *dump_header = dump->p;
	u32 reg_sz, header_size, total_size;
	u32 cpp_rd_addr, max_rd_addr;
	int bytes_read;
	void *dest;
	u32 cpp_id;
	int err;

	if (!FUNC6(spec_csr))
		return FUNC7(&spec_csr->tl, -EINVAL, dump);

	reg_sz = FUNC1(spec_csr->register_width) / BITS_PER_BYTE;
	header_size = FUNC0(sizeof(*dump_header));
	total_size = header_size +
		     FUNC0(FUNC1(spec_csr->cpp.dump_length));
	dest = dump->p + header_size;

	err = FUNC4(FUNC1(spec_csr->tl.type), total_size, dump);
	if (err)
		return err;

	dump_header->cpp = spec_csr->cpp;
	dump_header->register_width = spec_csr->register_width;

	cpp_id = FUNC8(&spec_csr->cpp.cpp_id);
	cpp_rd_addr = FUNC1(spec_csr->cpp.offset);
	max_rd_addr = cpp_rd_addr + FUNC1(spec_csr->cpp.dump_length);

	while (cpp_rd_addr < max_rd_addr) {
		if (FUNC3(&spec_csr->cpp.cpp_id)) {
			err = FUNC9(pf->cpp, cpp_rd_addr, (u32 *)dest);
		} else {
			bytes_read = FUNC5(pf->cpp, cpp_id, cpp_rd_addr,
						  dest, reg_sz);
			err = bytes_read == reg_sz ? 0 : -EIO;
		}
		if (err) {
			dump_header->error = FUNC2(err);
			dump_header->error_offset = FUNC2(cpp_rd_addr);
			break;
		}
		cpp_rd_addr += reg_sz;
		dest += reg_sz;
	}

	return 0;
}