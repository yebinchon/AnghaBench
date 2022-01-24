#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int* data; } ;
struct libipw_hdr_3addr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  frame_ctl; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_discards_undecryptable; } ;
struct libipw_device {TYPE_2__ ieee_stats; } ;
struct lib80211_crypt_data {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  priv; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* decrypt_mpdu ) (struct sk_buff*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct libipw_device *ieee, struct sk_buff *skb,
			   struct lib80211_crypt_data *crypt)
{
	struct libipw_hdr_3addr *hdr;
	int res, hdrlen;

	if (crypt == NULL || crypt->ops->decrypt_mpdu == NULL)
		return 0;

	hdr = (struct libipw_hdr_3addr *)skb->data;
	hdrlen = FUNC4(FUNC3(hdr->frame_ctl));

	FUNC2(&crypt->refcnt);
	res = crypt->ops->decrypt_mpdu(skb, hdrlen, crypt->priv);
	FUNC1(&crypt->refcnt);
	if (res < 0) {
		FUNC0("decryption failed (SA=%pM) res=%d\n",
				     hdr->addr2, res);
		if (res == -2)
			FUNC0("Decryption failed ICV "
					     "mismatch (key %d)\n",
					     skb->data[hdrlen + 3] >> 6);
		ieee->ieee_stats.rx_discards_undecryptable++;
		return -1;
	}

	return res;
}