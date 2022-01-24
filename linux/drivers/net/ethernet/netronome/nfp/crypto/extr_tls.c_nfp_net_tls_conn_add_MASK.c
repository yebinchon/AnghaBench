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
 int FUNC0 (struct nfp_net*,int,int) ; 

__attribute__((used)) static int
FUNC1(struct nfp_net *nn, enum tls_offload_ctx_dir direction)
{
	return FUNC0(nn, 1, direction);
}