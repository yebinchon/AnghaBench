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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct nfp_prog {int dummy; } ;
typedef  enum br_mask { ____Placeholder_br_mask } br_mask ;
typedef  enum alu_op { ____Placeholder_alu_op } alu_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(struct nfp_prog *nfp_prog, u8 dst, enum alu_op alu_op, u8 src,
		 enum br_mask br_mask, u16 off)
{
	FUNC0(nfp_prog, FUNC4(), FUNC2(dst), alu_op, FUNC3(src));
	FUNC1(nfp_prog, br_mask, off, 0);
}