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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct nfp_net_tls_offload_ctx {int /*<<< orphan*/  next_seq; int /*<<< orphan*/ * fw_handle; } ;
struct nfp_net {int dummy; } ;
struct nfp_crypto_req_update {int /*<<< orphan*/  rec_no; int /*<<< orphan*/  tcp_seq; int /*<<< orphan*/  handle; int /*<<< orphan*/  resv; int /*<<< orphan*/  opcode; scalar_t__ ep_id; } ;
struct nfp_crypto_reply_simple {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFP_CCM_TYPE_CRYPTO_UPDATE ; 
 int TLS_OFFLOAD_CTX_DIR_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct nfp_net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_net*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC5 (struct nfp_net*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nfp_net*,struct sk_buff*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct nfp_net_tls_offload_ctx* FUNC8 (struct sock*,int) ; 

__attribute__((used)) static int
FUNC9(struct net_device *netdev, struct sock *sk, u32 seq,
		   u8 *rcd_sn, enum tls_offload_ctx_dir direction)
{
	struct nfp_net *nn = FUNC3(netdev);
	struct nfp_net_tls_offload_ctx *ntls;
	struct nfp_crypto_req_update *req;
	struct sk_buff *skb;
	gfp_t flags;
	int err;

	flags = direction == TLS_OFFLOAD_CTX_DIR_TX ? GFP_KERNEL : GFP_ATOMIC;
	skb = FUNC5(nn, sizeof(*req), flags);
	if (!skb)
		return -ENOMEM;

	ntls = FUNC8(sk, direction);
	req = (void *)skb->data;
	req->ep_id = 0;
	req->opcode = FUNC7(direction);
	FUNC2(req->resv, 0, sizeof(req->resv));
	FUNC1(req->handle, ntls->fw_handle, sizeof(ntls->fw_handle));
	req->tcp_seq = FUNC0(seq);
	FUNC1(req->rec_no, rcd_sn, sizeof(req->rec_no));

	if (direction == TLS_OFFLOAD_CTX_DIR_TX) {
		err = FUNC6(nn, skb, "sync",
						     NFP_CCM_TYPE_CRYPTO_UPDATE);
		if (err)
			return err;
		ntls->next_seq = seq;
	} else {
		FUNC4(nn, skb, NFP_CCM_TYPE_CRYPTO_UPDATE,
				  sizeof(struct nfp_crypto_reply_simple));
	}

	return 0;
}