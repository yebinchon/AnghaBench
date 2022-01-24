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
struct sk_buff {scalar_t__ data; } ;
struct nfp_bpf_map {int /*<<< orphan*/  tid; } ;
struct nfp_app_bpf {int /*<<< orphan*/  ccm; } ;
struct cmsg_req_map_free_tbl {int /*<<< orphan*/  tid; } ;
struct cmsg_reply_map_free_tbl {int /*<<< orphan*/  reply_hdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFP_CCM_TYPE_BPF_MAP_FREE ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_app_bpf*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct nfp_app_bpf*,int) ; 
 int FUNC5 (struct nfp_app_bpf*,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct nfp_app_bpf *bpf, struct nfp_bpf_map *nfp_map)
{
	struct cmsg_reply_map_free_tbl *reply;
	struct cmsg_req_map_free_tbl *req;
	struct sk_buff *skb;
	int err;

	skb = FUNC4(bpf, sizeof(*req));
	if (!skb) {
		FUNC1(bpf, "leaking map - failed to allocate msg\n");
		return;
	}

	req = (void *)skb->data;
	req->tid = FUNC2(nfp_map->tid);

	skb = FUNC6(&bpf->ccm, skb, NFP_CCM_TYPE_BPF_MAP_FREE,
				  sizeof(*reply));
	if (FUNC0(skb)) {
		FUNC1(bpf, "leaking map - I/O error\n");
		return;
	}

	reply = (void *)skb->data;
	err = FUNC5(bpf, &reply->reply_hdr);
	if (err)
		FUNC1(bpf, "leaking map - FW responded with: %d\n", err);

	FUNC3(skb);
}