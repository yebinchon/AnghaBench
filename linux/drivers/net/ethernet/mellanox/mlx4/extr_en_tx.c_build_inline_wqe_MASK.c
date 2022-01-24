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
struct skb_shared_info {int /*<<< orphan*/ * frags; scalar_t__ nr_frags; } ;
struct sk_buff {int len; } ;
struct mlx4_wqe_inline_seg {void* byte_count; } ;
struct mlx4_en_tx_desc {struct mlx4_wqe_inline_seg inl; } ;

/* Variables and functions */
 int CTRL_SIZE ; 
 int MIN_PKT_LEN ; 
 int MLX4_INLINE_ALIGN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff const*,struct mlx4_wqe_inline_seg*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff const*,int,struct mlx4_wqe_inline_seg*,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (struct sk_buff const*) ; 

__attribute__((used)) static void FUNC9(struct mlx4_en_tx_desc *tx_desc,
			     const struct sk_buff *skb,
			     const struct skb_shared_info *shinfo,
			     void *fragptr)
{
	struct mlx4_wqe_inline_seg *inl = &tx_desc->inl;
	int spc = MLX4_INLINE_ALIGN - CTRL_SIZE - sizeof(*inl);
	unsigned int hlen = FUNC8(skb);

	if (skb->len <= spc) {
		if (FUNC2(skb->len >= MIN_PKT_LEN)) {
			inl->byte_count = FUNC0(1 << 31 | skb->len);
		} else {
			inl->byte_count = FUNC0(1 << 31 | MIN_PKT_LEN);
			FUNC4(((void *)(inl + 1)) + skb->len, 0,
			       MIN_PKT_LEN - skb->len);
		}
		FUNC5(skb, inl + 1, hlen);
		if (shinfo->nr_frags)
			FUNC3(((void *)(inl + 1)) + hlen, fragptr,
			       FUNC7(&shinfo->frags[0]));

	} else {
		inl->byte_count = FUNC0(1 << 31 | spc);
		if (hlen <= spc) {
			FUNC5(skb, inl + 1, hlen);
			if (hlen < spc) {
				FUNC3(((void *)(inl + 1)) + hlen,
				       fragptr, spc - hlen);
				fragptr +=  spc - hlen;
			}
			inl = (void *) (inl + 1) + spc;
			FUNC3(((void *)(inl + 1)), fragptr, skb->len - spc);
		} else {
			FUNC5(skb, inl + 1, spc);
			inl = (void *) (inl + 1) + spc;
			FUNC6(skb, spc, inl + 1,
							 hlen - spc);
			if (shinfo->nr_frags)
				FUNC3(((void *)(inl + 1)) + hlen - spc,
				       fragptr,
				       FUNC7(&shinfo->frags[0]));
		}

		FUNC1();
		inl->byte_count = FUNC0(1 << 31 | (skb->len - spc));
	}
}