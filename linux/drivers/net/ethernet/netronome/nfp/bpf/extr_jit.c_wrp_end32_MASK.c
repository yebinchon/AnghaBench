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
typedef  int /*<<< orphan*/  swreg ;
struct nfp_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHF_SC_R_ROT ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_prog*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nfp_prog *nfp_prog, swreg reg_in, u8 gpr_out)
{
	FUNC0(nfp_prog, FUNC2(gpr_out), 0xf, reg_in,
		      SHF_SC_R_ROT, 8);
	FUNC0(nfp_prog, FUNC2(gpr_out), 0x5, FUNC1(gpr_out),
		      SHF_SC_R_ROT, 16);
}