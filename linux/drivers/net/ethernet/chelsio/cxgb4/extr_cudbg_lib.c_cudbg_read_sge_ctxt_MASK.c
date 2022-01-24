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
typedef  int /*<<< orphan*/  u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct adapter {int /*<<< orphan*/  mbox; } ;
typedef  enum ctxt_type { ____Placeholder_ctxt_type } ctxt_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cudbg_init*) ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cudbg_init *pdbg_init, u32 cid,
				enum ctxt_type ctype, u32 *data)
{
	struct adapter *padap = pdbg_init->adap;
	int rc = -1;

	/* Under heavy traffic, the SGE Queue contexts registers will be
	 * frequently accessed by firmware.
	 *
	 * To avoid conflicts with firmware, always ask firmware to fetch
	 * the SGE Queue contexts via mailbox. On failure, fallback to
	 * accessing hardware registers directly.
	 */
	if (FUNC0(pdbg_init))
		rc = FUNC1(padap, padap->mbox, cid, ctype, data);
	if (rc)
		FUNC2(padap, cid, ctype, data);
}