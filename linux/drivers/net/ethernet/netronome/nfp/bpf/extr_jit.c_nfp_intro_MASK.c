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
struct nfp_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALU_OP_AND ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_prog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nfp_prog *nfp_prog)
{
	FUNC4(nfp_prog, FUNC2(nfp_prog), FUNC0(13, 0));
	FUNC1(nfp_prog, FUNC2(nfp_prog),
		 FUNC2(nfp_prog), ALU_OP_AND, FUNC3(nfp_prog));
}