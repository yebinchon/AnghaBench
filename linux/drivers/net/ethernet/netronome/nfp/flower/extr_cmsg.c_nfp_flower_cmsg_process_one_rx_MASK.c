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
struct nfp_flower_priv {int flower_ext_feats; } ;
struct nfp_flower_cmsg_hdr {int type; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
typedef  enum nfp_flower_cmsg_type_port { ____Placeholder_nfp_flower_cmsg_type_port } nfp_flower_cmsg_type_port ;

/* Variables and functions */
#define  NFP_FLOWER_CMSG_TYPE_ACTIVE_TUNS 133 
#define  NFP_FLOWER_CMSG_TYPE_LAG_CONFIG 132 
#define  NFP_FLOWER_CMSG_TYPE_MERGE_HINT 131 
#define  NFP_FLOWER_CMSG_TYPE_NO_NEIGH 130 
#define  NFP_FLOWER_CMSG_TYPE_PORT_MOD 129 
#define  NFP_FLOWER_CMSG_TYPE_QOS_STATS 128 
 int NFP_FL_FEATS_FLOW_MERGE ; 
 int NFP_FL_FEATS_LAG ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct nfp_flower_cmsg_hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_app*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_app*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_app*,char*,int) ; 
 int FUNC6 (struct nfp_app*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_app*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfp_app*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp_app*,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC10(struct nfp_app *app, struct sk_buff *skb)
{
	struct nfp_flower_priv *app_priv = app->priv;
	struct nfp_flower_cmsg_hdr *cmsg_hdr;
	enum nfp_flower_cmsg_type_port type;
	bool skb_stored = false;

	cmsg_hdr = FUNC2(skb);

	type = cmsg_hdr->type;
	switch (type) {
	case NFP_FLOWER_CMSG_TYPE_PORT_MOD:
		FUNC4(app, skb);
		break;
	case NFP_FLOWER_CMSG_TYPE_MERGE_HINT:
		if (app_priv->flower_ext_feats & NFP_FL_FEATS_FLOW_MERGE) {
			FUNC3(app, skb);
			break;
		}
		goto err_default;
	case NFP_FLOWER_CMSG_TYPE_NO_NEIGH:
		FUNC9(app, skb);
		break;
	case NFP_FLOWER_CMSG_TYPE_ACTIVE_TUNS:
		FUNC8(app, skb);
		break;
	case NFP_FLOWER_CMSG_TYPE_QOS_STATS:
		FUNC7(app, skb);
		break;
	case NFP_FLOWER_CMSG_TYPE_LAG_CONFIG:
		if (app_priv->flower_ext_feats & NFP_FL_FEATS_LAG) {
			skb_stored = FUNC6(app, skb);
			break;
		}
		/* fall through */
	default:
err_default:
		FUNC5(app, "Cannot handle invalid repr control type %u\n",
				     type);
		goto out;
	}

	if (!skb_stored)
		FUNC0(skb);
	return;
out:
	FUNC1(skb);
}