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
typedef  int u64 ;
struct rvu {int dummy; } ;
struct TYPE_2__ {int total; int /*<<< orphan*/  in_use; } ;
struct nix_hw {TYPE_1__ lso; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  NIX_AF_CONST1 ; 
 int /*<<< orphan*/  NIX_AF_LSO_CFG ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int NIX_LSO_FORMAT_IDX_TSOV4 ; 
 int NIX_LSO_FORMAT_IDX_TSOV6 ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,int,int,int*) ; 
 int FUNC4 (struct rvu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct rvu *rvu, struct nix_hw *nix_hw, int blkaddr)
{
	u64 cfg, idx, fidx = 0;

	/* Get max HW supported format indices */
	cfg = (FUNC4(rvu, blkaddr, NIX_AF_CONST1) >> 48) & 0xFF;
	nix_hw->lso.total = cfg;

	/* Enable LSO */
	cfg = FUNC4(rvu, blkaddr, NIX_AF_LSO_CFG);
	/* For TSO, set first and middle segment flags to
	 * mask out PSH, RST & FIN flags in TCP packet
	 */
	cfg &= ~((0xFFFFULL << 32) | (0xFFFFULL << 16));
	cfg |= (0xFFF2ULL << 32) | (0xFFF2ULL << 16);
	FUNC5(rvu, blkaddr, NIX_AF_LSO_CFG, cfg | FUNC0(63));

	/* Setup default static LSO formats
	 *
	 * Configure format fields for TCPv4 segmentation offload
	 */
	idx = NIX_LSO_FORMAT_IDX_TSOV4;
	FUNC2(rvu, blkaddr, idx, true, &fidx);
	FUNC3(rvu, blkaddr, idx, &fidx);

	/* Set rest of the fields to NOP */
	for (; fidx < 8; fidx++) {
		FUNC5(rvu, blkaddr,
			    FUNC1(idx, fidx), 0x0ULL);
	}
	nix_hw->lso.in_use++;

	/* Configure format fields for TCPv6 segmentation offload */
	idx = NIX_LSO_FORMAT_IDX_TSOV6;
	fidx = 0;
	FUNC2(rvu, blkaddr, idx, false, &fidx);
	FUNC3(rvu, blkaddr, idx, &fidx);

	/* Set rest of the fields to NOP */
	for (; fidx < 8; fidx++) {
		FUNC5(rvu, blkaddr,
			    FUNC1(idx, fidx), 0x0ULL);
	}
	nix_hw->lso.in_use++;
}