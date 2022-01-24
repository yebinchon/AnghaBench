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
typedef  scalar_t__ u8 ;
struct nfp_insn_meta {int dummy; } ;

/* Variables and functions */
 scalar_t__ BPF_CALL ; 
 scalar_t__ BPF_EXIT ; 
 scalar_t__ BPF_JA ; 
 scalar_t__ FUNC0 (struct nfp_insn_meta const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_insn_meta const*) ; 
 scalar_t__ FUNC2 (struct nfp_insn_meta const*) ; 

__attribute__((used)) static inline bool FUNC3(const struct nfp_insn_meta *meta)
{
	u8 op;

	if (FUNC0(meta))
		return true;

	if (!FUNC1(meta))
		return false;

	op = FUNC2(meta);
	return op != BPF_JA && op != BPF_EXIT && op != BPF_CALL;
}