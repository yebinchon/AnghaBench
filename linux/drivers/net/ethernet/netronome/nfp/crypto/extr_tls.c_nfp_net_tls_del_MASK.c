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
struct tls_context {int dummy; } ;
struct nfp_net_tls_offload_ctx {int /*<<< orphan*/  fw_handle; } ;
struct nfp_net {int dummy; } ;
struct net_device {int dummy; } ;
typedef  enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;

/* Variables and functions */
 struct nfp_net_tls_offload_ctx* FUNC0 (struct tls_context*,int) ; 
 struct nfp_net* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct net_device *netdev, struct tls_context *tls_ctx,
		enum tls_offload_ctx_dir direction)
{
	struct nfp_net *nn = FUNC1(netdev);
	struct nfp_net_tls_offload_ctx *ntls;

	FUNC2(nn, direction);

	ntls = FUNC0(tls_ctx, direction);
	FUNC3(nn, ntls->fw_handle);
}