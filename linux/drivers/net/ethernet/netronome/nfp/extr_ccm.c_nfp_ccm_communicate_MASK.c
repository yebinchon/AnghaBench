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
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct nfp_ccm_hdr {int type; int /*<<< orphan*/  tag; int /*<<< orphan*/  ver; } ;
struct nfp_ccm {struct nfp_app* app; } ;
struct nfp_app {int /*<<< orphan*/  ctrl; } ;
typedef  enum nfp_ccm_type { ____Placeholder_nfp_ccm_type } nfp_ccm_type ;

/* Variables and functions */
 int EIO ; 
 struct sk_buff* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  NFP_CCM_ABI_VERSION ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_app*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_app*,char*,int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct nfp_ccm*) ; 
 int FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (struct nfp_ccm*,struct nfp_app*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

struct sk_buff *
FUNC12(struct nfp_ccm *ccm, struct sk_buff *skb,
		    enum nfp_ccm_type type, unsigned int reply_size)
{
	struct nfp_app *app = ccm->app;
	struct nfp_ccm_hdr *hdr;
	int reply_type, tag;

	FUNC10(app->ctrl);
	tag = FUNC7(ccm);
	if (tag < 0) {
		FUNC11(app->ctrl);
		FUNC6(skb);
		return FUNC0(tag);
	}

	hdr = (void *)skb->data;
	hdr->ver = NFP_CCM_ABI_VERSION;
	hdr->type = type;
	hdr->tag = FUNC5(tag);

	FUNC3(app, skb);

	FUNC11(app->ctrl);

	skb = FUNC9(ccm, app, type, tag);
	if (FUNC1(skb))
		return skb;

	reply_type = FUNC8(skb);
	if (reply_type != FUNC2(type)) {
		FUNC4(app, "cmsg drop - wrong type 0x%02x != 0x%02lx!\n",
			 reply_type, FUNC2(type));
		goto err_free;
	}
	/* 0 reply_size means caller will do the validation */
	if (reply_size && skb->len != reply_size) {
		FUNC4(app, "cmsg drop - type 0x%02x wrong size %d != %d!\n",
			 type, skb->len, reply_size);
		goto err_free;
	}

	return skb;
err_free:
	FUNC6(skb);
	return FUNC0(-EIO);
}