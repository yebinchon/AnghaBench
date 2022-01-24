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
struct sk_buff {int dummy; } ;
struct nfp_ccm {int /*<<< orphan*/  wq; } ;
struct nfp_app {int dummy; } ;
typedef  enum nfp_ccm_type { ____Placeholder_nfp_ccm_type } nfp_ccm_type ;

/* Variables and functions */
 int ERESTARTSYS ; 
 struct sk_buff* FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_app*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct sk_buff* FUNC3 (struct nfp_ccm*,struct nfp_app*,int) ; 
 struct sk_buff* FUNC4 (struct nfp_ccm*,struct nfp_app*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC7(struct nfp_ccm *ccm, struct nfp_app *app,
		   enum nfp_ccm_type type, int tag)
{
	struct sk_buff *skb;
	int i, err;

	for (i = 0; i < 50; i++) {
		FUNC5(4);
		skb = FUNC3(ccm, app, tag);
		if (skb)
			return skb;
	}

	err = FUNC6(ccm->wq,
					       skb = FUNC3(ccm, app,
								   tag),
					       FUNC2(5000));
	/* We didn't get a response - try last time and atomically drop
	 * the tag even if no response is matched.
	 */
	if (!skb)
		skb = FUNC4(ccm, app, tag);
	if (err < 0) {
		FUNC1(app, "%s waiting for response to 0x%02x: %d\n",
			 err == ERESTARTSYS ? "interrupted" : "error",
			 type, err);
		return FUNC0(err);
	}
	if (!skb) {
		FUNC1(app, "timeout waiting for response to 0x%02x\n", type);
		return FUNC0(-ETIMEDOUT);
	}

	return skb;
}