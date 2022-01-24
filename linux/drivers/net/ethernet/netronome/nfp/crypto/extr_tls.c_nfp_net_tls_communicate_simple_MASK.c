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
struct nfp_net {int /*<<< orphan*/  dp; } ;
struct nfp_crypto_reply_simple {int /*<<< orphan*/  error; } ;
typedef  enum nfp_ccm_type { ____Placeholder_nfp_ccm_type } nfp_ccm_type ;

/* Variables and functions */
 int NFP_CCM_TYPE_CRYPTO_DEL ; 
 int FUNC0 (struct nfp_net*,struct sk_buff*,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int) ; 

__attribute__((used)) static int
FUNC4(struct nfp_net *nn, struct sk_buff *skb,
			       const char *name, enum nfp_ccm_type type)
{
	struct nfp_crypto_reply_simple *reply;
	int err;

	err = FUNC0(nn, skb, type,
					 sizeof(*reply), sizeof(*reply),
					 type == NFP_CCM_TYPE_CRYPTO_DEL);
	if (err) {
		FUNC3(&nn->dp, "failed to %s TLS: %d\n", name, err);
		return err;
	}

	reply = (void *)skb->data;
	err = -FUNC1(reply->error);
	if (err)
		FUNC3(&nn->dp, "failed to %s TLS, fw replied: %d\n",
			   name, err);
	FUNC2(skb);

	return err;
}