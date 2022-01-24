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
typedef  long long u32 ;
struct sk_buff {scalar_t__ data; } ;
struct nfp_app_bpf {int /*<<< orphan*/  ccm; } ;
struct cmsg_req_map_alloc_tbl {scalar_t__ map_flags; void* map_type; void* max_entries; void* value_size; void* key_size; } ;
struct cmsg_reply_map_alloc_tbl {int /*<<< orphan*/  tid; int /*<<< orphan*/  reply_hdr; } ;
struct bpf_map {int /*<<< orphan*/  map_type; int /*<<< orphan*/  max_entries; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; } ;

/* Variables and functions */
 long long ENOMEM ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFP_CCM_TYPE_BPF_MAP_ALLOC ; 
 long long FUNC1 (struct sk_buff*) ; 
 long long FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct nfp_app_bpf*,int) ; 
 int FUNC7 (struct nfp_app_bpf*,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int) ; 

long long int
FUNC9(struct nfp_app_bpf *bpf, struct bpf_map *map)
{
	struct cmsg_reply_map_alloc_tbl *reply;
	struct cmsg_req_map_alloc_tbl *req;
	struct sk_buff *skb;
	u32 tid;
	int err;

	skb = FUNC6(bpf, sizeof(*req));
	if (!skb)
		return -ENOMEM;

	req = (void *)skb->data;
	req->key_size = FUNC3(map->key_size);
	req->value_size = FUNC3(map->value_size);
	req->max_entries = FUNC3(map->max_entries);
	req->map_type = FUNC3(map->map_type);
	req->map_flags = 0;

	skb = FUNC8(&bpf->ccm, skb, NFP_CCM_TYPE_BPF_MAP_ALLOC,
				  sizeof(*reply));
	if (FUNC0(skb))
		return FUNC1(skb);

	reply = (void *)skb->data;
	err = FUNC7(bpf, &reply->reply_hdr);
	if (err)
		goto err_free;

	tid = FUNC2(reply->tid);
	FUNC4(skb);

	return tid;
err_free:
	FUNC5(skb);
	return err;
}