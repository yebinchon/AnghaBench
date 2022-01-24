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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct nfp_bpf_map {int tid; struct nfp_app_bpf* bpf; } ;
struct nfp_app_bpf {int /*<<< orphan*/  ccm; } ;
struct cmsg_req_map_op {void* flags; void* count; void* tid; } ;
struct cmsg_reply_map_op {int /*<<< orphan*/  reply_hdr; int /*<<< orphan*/  count; } ;
struct bpf_map {int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; } ;
struct bpf_offloaded_map {struct bpf_map map; struct nfp_bpf_map* dev_priv; } ;
typedef  enum nfp_ccm_type { ____Placeholder_nfp_ccm_type } nfp_ccm_type ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_app_bpf*,char*,int,int,...) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nfp_app_bpf*,unsigned int) ; 
 struct sk_buff* FUNC8 (struct nfp_app_bpf*,int) ; 
 unsigned int FUNC9 (struct nfp_bpf_map*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_bpf_map*,int,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct nfp_app_bpf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (struct nfp_app_bpf*,struct cmsg_reply_map_op*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (struct nfp_app_bpf*,struct cmsg_reply_map_op*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (struct nfp_app_bpf*,struct cmsg_req_map_op*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (struct nfp_app_bpf*,struct cmsg_req_map_op*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC16 (int /*<<< orphan*/ *,struct sk_buff*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct bpf_offloaded_map *offmap, enum nfp_ccm_type op,
		      u8 *key, u8 *value, u64 flags, u8 *out_key, u8 *out_value)
{
	struct nfp_bpf_map *nfp_map = offmap->dev_priv;
	unsigned int n_entries, reply_entries, count;
	struct nfp_app_bpf *bpf = nfp_map->bpf;
	struct bpf_map *map = &offmap->map;
	struct cmsg_reply_map_op *reply;
	struct cmsg_req_map_op *req;
	struct sk_buff *skb;
	u32 cache_gen;
	int err;

	/* FW messages have no space for more than 32 bits of flags */
	if (flags >> 32)
		return -EOPNOTSUPP;

	/* Handle op cache */
	n_entries = FUNC9(nfp_map, op, key, out_key,
					      out_value, &cache_gen);
	if (!n_entries)
		return 0;

	skb = FUNC8(bpf, 1);
	if (!skb) {
		err = -ENOMEM;
		goto err_cache_put;
	}

	req = (void *)skb->data;
	req->tid = FUNC4(nfp_map->tid);
	req->count = FUNC4(n_entries);
	req->flags = FUNC4(flags);

	/* Copy inputs */
	if (key)
		FUNC6(FUNC14(bpf, req, 0), key, map->key_size);
	if (value)
		FUNC6(FUNC15(bpf, req, 0), value,
		       map->value_size);

	skb = FUNC16(&bpf->ccm, skb, op, 0);
	if (FUNC0(skb)) {
		err = FUNC1(skb);
		goto err_cache_put;
	}

	if (skb->len < sizeof(*reply)) {
		FUNC3(bpf, "cmsg drop - type 0x%02x too short %d!\n",
			  op, skb->len);
		err = -EIO;
		goto err_free;
	}

	reply = (void *)skb->data;
	count = FUNC2(reply->count);
	err = FUNC11(bpf, &reply->reply_hdr);
	/* FW responds with message sized to hold the good entries,
	 * plus one extra entry if there was an error.
	 */
	reply_entries = count + !!err;
	if (n_entries > 1 && count)
		err = 0;
	if (err)
		goto err_free;

	if (skb->len != FUNC7(bpf, reply_entries)) {
		FUNC3(bpf, "cmsg drop - type 0x%02x too short %d for %d entries!\n",
			  op, skb->len, reply_entries);
		err = -EIO;
		goto err_free;
	}

	/* Copy outputs */
	if (out_key)
		FUNC6(out_key, FUNC12(bpf, reply, 0),
		       map->key_size);
	if (out_value)
		FUNC6(out_value, FUNC13(bpf, reply, 0),
		       map->value_size);

	FUNC10(nfp_map, op, skb, cache_gen);

	return 0;
err_free:
	FUNC5(skb);
err_cache_put:
	FUNC10(nfp_map, op, NULL, cache_gen);
	return err;
}