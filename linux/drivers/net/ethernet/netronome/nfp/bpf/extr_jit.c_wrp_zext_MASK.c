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
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int flags; } ;

/* Variables and functions */
 int FLAG_INSN_DO_ZEXT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta, u8 dst)
{
	if (meta->flags & FLAG_INSN_DO_ZEXT)
		FUNC1(nfp_prog, FUNC0(dst + 1), 0);
}