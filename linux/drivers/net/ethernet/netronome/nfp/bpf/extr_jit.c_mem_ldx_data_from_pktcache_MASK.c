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
typedef  scalar_t__ u8 ;
struct nfp_prog {int dummy; } ;
struct TYPE_4__ {scalar_t__ range_start; } ;
struct TYPE_3__ {scalar_t__ off; } ;
struct nfp_insn_meta {TYPE_2__ pkt_cache; TYPE_1__ insn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_WIDTH ; 
 int FUNC1 (struct nfp_prog*,struct nfp_insn_meta*,unsigned int) ; 
 int FUNC2 (struct nfp_prog*,struct nfp_insn_meta*,unsigned int) ; 

__attribute__((used)) static int
FUNC3(struct nfp_prog *nfp_prog,
			   struct nfp_insn_meta *meta, unsigned int size)
{
	u8 off = meta->insn.off - meta->pkt_cache.range_start;

	if (FUNC0(off, REG_WIDTH))
		return FUNC1(nfp_prog, meta, size);

	return FUNC2(nfp_prog, meta, size);
}