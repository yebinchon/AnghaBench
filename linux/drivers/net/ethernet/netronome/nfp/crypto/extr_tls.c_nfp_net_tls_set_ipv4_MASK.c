#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct nfp_net {int dummy; } ;
struct nfp_crypto_req_add_back {int dummy; } ;
struct TYPE_2__ {int key_len; } ;
struct nfp_crypto_req_add_v4 {struct nfp_crypto_req_add_back back; int /*<<< orphan*/  dst_ip; int /*<<< orphan*/  src_ip; TYPE_1__ front; } ;
struct inet_sock {int /*<<< orphan*/  inet_saddr; int /*<<< orphan*/  inet_daddr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int TLS_OFFLOAD_CTX_DIR_TX ; 
 struct inet_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*,TYPE_1__*) ; 

__attribute__((used)) static struct nfp_crypto_req_add_back *
FUNC2(struct nfp_net *nn, struct nfp_crypto_req_add_v4 *req,
		     struct sock *sk, int direction)
{
	struct inet_sock *inet = FUNC0(sk);

	req->front.key_len += sizeof(__be32) * 2;

	if (direction == TLS_OFFLOAD_CTX_DIR_TX) {
		FUNC1(nn, &req->front);
	} else {
		req->src_ip = inet->inet_daddr;
		req->dst_ip = inet->inet_saddr;
	}

	return &req->back;
}