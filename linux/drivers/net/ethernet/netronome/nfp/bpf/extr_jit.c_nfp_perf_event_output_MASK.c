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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct nfp_insn_meta {scalar_t__ func_id; TYPE_1__ arg1; } ;

/* Variables and functions */
 scalar_t__ BR_OFF_RELO ; 
 int /*<<< orphan*/  BR_UNC ; 
 int EINVAL ; 
 int /*<<< orphan*/  RELO_BR_HELPER ; 
 int /*<<< orphan*/  RELO_IMMED_REL ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_prog*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
	swreg ptr_type;
	u32 ret_tgt;

	ptr_type = FUNC6(nfp_prog, meta->arg1.type, FUNC1(nfp_prog));

	ret_tgt = FUNC3(nfp_prog) + 3;

	FUNC0(nfp_prog, BR_UNC, BR_OFF_RELO + meta->func_id,
		     2, RELO_BR_HELPER);

	/* Load ptr type into A1 */
	FUNC8(nfp_prog, FUNC4(1), ptr_type);

	/* Load the return address into B0 */
	FUNC7(nfp_prog, FUNC5(0), ret_tgt, RELO_IMMED_REL);

	if (!FUNC2(nfp_prog, ret_tgt))
		return -EINVAL;

	return 0;
}