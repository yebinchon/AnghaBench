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
struct nfp_net {int dummy; } ;
typedef  enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_NET_CFG_UPDATE_CRYPTO ; 
 int FUNC0 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nfp_net*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net*) ; 

__attribute__((used)) static int
FUNC4(struct nfp_net *nn, int add,
			     enum tls_offload_ctx_dir direction)
{
	int ret = 0;

	/* Use the BAR lock to protect the connection counts */
	FUNC2(nn);
	if (FUNC1(nn, add, direction)) {
		ret = FUNC0(nn, NFP_NET_CFG_UPDATE_CRYPTO);
		/* Undo the cnt adjustment if failed */
		if (ret)
			FUNC1(nn, -add, direction);
	}
	FUNC3(nn);

	return ret;
}