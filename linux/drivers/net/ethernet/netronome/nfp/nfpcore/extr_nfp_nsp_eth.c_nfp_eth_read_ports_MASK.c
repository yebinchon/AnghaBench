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
struct nfp_eth_table {int dummy; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfp_nsp*) ; 
 struct nfp_eth_table* FUNC1 (struct nfp_cpp*,struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_nsp*) ; 
 struct nfp_nsp* FUNC3 (struct nfp_cpp*) ; 

struct nfp_eth_table *FUNC4(struct nfp_cpp *cpp)
{
	struct nfp_eth_table *ret;
	struct nfp_nsp *nsp;

	nsp = FUNC3(cpp);
	if (FUNC0(nsp))
		return NULL;

	ret = FUNC1(cpp, nsp);
	FUNC2(nsp);

	return ret;
}