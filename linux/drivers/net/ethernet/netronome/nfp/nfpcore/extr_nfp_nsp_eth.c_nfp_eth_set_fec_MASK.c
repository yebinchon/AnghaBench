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
struct nfp_nsp {int dummy; } ;
struct nfp_cpp {int dummy; } ;
typedef  enum nfp_eth_fec { ____Placeholder_nfp_eth_fec } nfp_eth_fec ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfp_nsp*) ; 
 int FUNC1 (struct nfp_nsp*) ; 
 int FUNC2 (struct nfp_nsp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_nsp*) ; 
 int FUNC4 (struct nfp_nsp*) ; 
 struct nfp_nsp* FUNC5 (struct nfp_cpp*,unsigned int) ; 

int
FUNC6(struct nfp_cpp *cpp, unsigned int idx, enum nfp_eth_fec mode)
{
	struct nfp_nsp *nsp;
	int err;

	nsp = FUNC5(cpp, idx);
	if (FUNC0(nsp))
		return FUNC1(nsp);

	err = FUNC2(nsp, mode);
	if (err) {
		FUNC3(nsp);
		return err;
	}

	return FUNC4(nsp);
}