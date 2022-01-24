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
typedef  int u32 ;
struct nfp_pf {int /*<<< orphan*/  hwinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  dump_length; } ;
struct nfp_dumpspec_csr {TYPE_1__ cpp; } ;
struct nfp_dump_tl {int /*<<< orphan*/  type; } ;
struct nfp_dump_csr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
#define  NFP_DUMPSPEC_TYPE_CPP_CSR 135 
#define  NFP_DUMPSPEC_TYPE_FWNAME 134 
#define  NFP_DUMPSPEC_TYPE_HWINFO 133 
#define  NFP_DUMPSPEC_TYPE_HWINFO_FIELD 132 
#define  NFP_DUMPSPEC_TYPE_INDIRECT_ME_CSR 131 
#define  NFP_DUMPSPEC_TYPE_ME_CSR 130 
#define  NFP_DUMPSPEC_TYPE_RTSYM 129 
#define  NFP_DUMPSPEC_TYPE_XPB_CSR 128 
 int NFP_IND_NUM_CONTEXTS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfp_pf*) ; 
 int FUNC3 (struct nfp_pf*,struct nfp_dump_tl*) ; 
 int FUNC4 (struct nfp_pf*,struct nfp_dump_tl*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_dumpspec_csr*) ; 
 int FUNC6 (struct nfp_dump_tl*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct nfp_pf *pf, struct nfp_dump_tl *tl, void *param)
{
	struct nfp_dumpspec_csr *spec_csr;
	u32 *size = param;
	u32 hwinfo_size;

	switch (FUNC1(tl->type)) {
	case NFP_DUMPSPEC_TYPE_FWNAME:
		*size += FUNC2(pf);
		break;
	case NFP_DUMPSPEC_TYPE_CPP_CSR:
	case NFP_DUMPSPEC_TYPE_XPB_CSR:
	case NFP_DUMPSPEC_TYPE_ME_CSR:
		spec_csr = (struct nfp_dumpspec_csr *)tl;
		if (!FUNC5(spec_csr))
			*size += FUNC6(tl);
		else
			*size += FUNC0(sizeof(struct nfp_dump_csr)) +
				 FUNC0(FUNC1(spec_csr->cpp.dump_length));
		break;
	case NFP_DUMPSPEC_TYPE_INDIRECT_ME_CSR:
		spec_csr = (struct nfp_dumpspec_csr *)tl;
		if (!FUNC5(spec_csr))
			*size += FUNC6(tl);
		else
			*size += FUNC0(sizeof(struct nfp_dump_csr)) +
				 FUNC0(FUNC1(spec_csr->cpp.dump_length) *
					NFP_IND_NUM_CONTEXTS);
		break;
	case NFP_DUMPSPEC_TYPE_RTSYM:
		*size += FUNC4(pf, tl);
		break;
	case NFP_DUMPSPEC_TYPE_HWINFO:
		hwinfo_size = FUNC7(pf->hwinfo);
		*size += sizeof(struct nfp_dump_tl) + FUNC0(hwinfo_size);
		break;
	case NFP_DUMPSPEC_TYPE_HWINFO_FIELD:
		*size += FUNC3(pf, tl);
		break;
	default:
		*size += FUNC6(tl);
		break;
	}

	return 0;
}