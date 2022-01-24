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
struct sk_buff {int len; } ;
struct nfp_ccm_hdr {int dummy; } ;
struct nfp_ccm {int /*<<< orphan*/  wq; int /*<<< orphan*/  replies; int /*<<< orphan*/  tag_allocator; struct nfp_app* app; } ;
struct nfp_app {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_app*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct nfp_ccm *ccm, struct sk_buff *skb)
{
	struct nfp_app *app = ccm->app;
	unsigned int tag;

	if (FUNC7(skb->len < sizeof(struct nfp_ccm_hdr))) {
		FUNC1(app, "cmsg drop - too short %d!\n", skb->len);
		goto err_free;
	}

	FUNC4(app->ctrl);

	tag = FUNC3(skb);
	if (FUNC7(!FUNC6(tag, ccm->tag_allocator))) {
		FUNC1(app, "cmsg drop - no one is waiting for tag %u!\n",
			 tag);
		goto err_unlock;
	}

	FUNC0(&ccm->replies, skb);
	FUNC8(&ccm->wq);

	FUNC5(app->ctrl);
	return;

err_unlock:
	FUNC5(app->ctrl);
err_free:
	FUNC2(skb);
}