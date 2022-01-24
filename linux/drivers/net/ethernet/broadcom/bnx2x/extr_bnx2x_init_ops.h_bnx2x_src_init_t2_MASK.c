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
struct src_ent {scalar_t__ next; } ;
struct bnx2x {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,scalar_t__,int) ; 
 scalar_t__ SRC_REG_COUNTFREE0 ; 
 scalar_t__ SRC_REG_FIRSTFREE0 ; 
 scalar_t__ SRC_REG_LASTFREE0 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp, struct src_ent *t2,
			      dma_addr_t t2_mapping, int src_cid_count)
{
	int i;
	int port = FUNC0(bp);

	/* Initialize T2 */
	for (i = 0; i < src_cid_count-1; i++)
		t2[i].next = (u64)(t2_mapping +
			     (i+1)*sizeof(struct src_ent));

	/* tell the searcher where the T2 table is */
	FUNC1(bp, SRC_REG_COUNTFREE0 + port*4, src_cid_count);

	FUNC4(bp, SRC_REG_FIRSTFREE0 + port*16,
		    FUNC3(t2_mapping), FUNC2(t2_mapping));

	FUNC4(bp, SRC_REG_LASTFREE0 + port*16,
		    FUNC3((u64)t2_mapping +
			   (src_cid_count-1) * sizeof(struct src_ent)),
		    FUNC2((u64)t2_mapping +
			   (src_cid_count-1) * sizeof(struct src_ent)));
}