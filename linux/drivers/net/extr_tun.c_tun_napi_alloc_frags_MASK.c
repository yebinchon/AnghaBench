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
struct tun_file {int /*<<< orphan*/  napi; } ;
struct sk_buff {size_t len; size_t data_len; size_t truesize; } ;
struct page {int dummy; } ;
struct iov_iter {int nr_segs; TYPE_1__* iov; } ;
struct TYPE_2__ {size_t iov_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int) ; 
 int MAX_SKB_FRAGS ; 
 size_t PAGE_SIZE ; 
 int FUNC1 (struct sk_buff*,size_t) ; 
 size_t FUNC2 (struct iov_iter const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (size_t) ; 
 int FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int,struct page*,void*,size_t) ; 
 struct page* FUNC10 (void*) ; 

__attribute__((used)) static struct sk_buff *FUNC11(struct tun_file *tfile,
					    size_t len,
					    const struct iov_iter *it)
{
	struct sk_buff *skb;
	size_t linear;
	int err;
	int i;

	if (it->nr_segs > MAX_SKB_FRAGS + 1)
		return FUNC0(-ENOMEM);

	FUNC3();
	skb = FUNC6(&tfile->napi);
	FUNC4();
	if (!skb)
		return FUNC0(-ENOMEM);

	linear = FUNC2(it);
	err = FUNC1(skb, linear);
	if (err)
		goto free;

	skb->len = len;
	skb->data_len = len - linear;
	skb->truesize += skb->data_len;

	for (i = 1; i < it->nr_segs; i++) {
		size_t fragsz = it->iov[i].iov_len;
		struct page *page;
		void *frag;

		if (fragsz == 0 || fragsz > PAGE_SIZE) {
			err = -EINVAL;
			goto free;
		}
		frag = FUNC7(fragsz);
		if (!frag) {
			err = -ENOMEM;
			goto free;
		}
		page = FUNC10(frag);
		FUNC9(skb, i - 1, page,
				   frag - FUNC8(page), fragsz);
	}

	return skb;
free:
	/* frees skb and all frags allocated with napi_alloc_frag() */
	FUNC5(&tfile->napi);
	return FUNC0(err);
}