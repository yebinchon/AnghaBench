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
typedef  scalar_t__ u64 ;
typedef  int u16 ;
struct rvu {int dummy; } ;
struct npc_mcam {int banksize; int banks_per_entry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (struct npc_mcam*,int) ; 
 scalar_t__ FUNC5 (struct rvu*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct rvu*,int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct rvu *rvu, struct npc_mcam *mcam,
				int blkaddr, u16 src, u16 dest)
{
	int dbank = FUNC4(mcam, dest);
	int sbank = FUNC4(mcam, src);
	u64 cfg, sreg, dreg;
	int bank, i;

	src &= (mcam->banksize - 1);
	dest &= (mcam->banksize - 1);

	/* Copy INTF's, W0's, W1's CAM0 and CAM1 configuration */
	for (bank = 0; bank < mcam->banks_per_entry; bank++) {
		sreg = FUNC1(src, sbank + bank, 0);
		dreg = FUNC1(dest, dbank + bank, 0);
		for (i = 0; i < 6; i++) {
			cfg = FUNC5(rvu, blkaddr, sreg + (i * 8));
			FUNC6(rvu, blkaddr, dreg + (i * 8), cfg);
		}
	}

	/* Copy action */
	cfg = FUNC5(rvu, blkaddr,
			 FUNC0(src, sbank));
	FUNC6(rvu, blkaddr,
		    FUNC0(dest, dbank), cfg);

	/* Copy TAG action */
	cfg = FUNC5(rvu, blkaddr,
			 FUNC3(src, sbank));
	FUNC6(rvu, blkaddr,
		    FUNC3(dest, dbank), cfg);

	/* Enable or disable */
	cfg = FUNC5(rvu, blkaddr,
			 FUNC2(src, sbank));
	FUNC6(rvu, blkaddr,
		    FUNC2(dest, dbank), cfg);
}