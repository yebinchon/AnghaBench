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
struct nfp_flower_cmsg_hdr {int type; int /*<<< orphan*/  version; scalar_t__ pad; } ;
struct nfp_app {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nfp_flower_cmsg_type_port { ____Placeholder_nfp_flower_cmsg_type_port } nfp_flower_cmsg_type_port ;

/* Variables and functions */
 scalar_t__ NFP_FLOWER_CMSG_HLEN ; 
 int /*<<< orphan*/  NFP_FLOWER_CMSG_VER1 ; 
 struct sk_buff* FUNC0 (struct nfp_app*,unsigned int,int /*<<< orphan*/ ) ; 
 struct nfp_flower_cmsg_hdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 

struct sk_buff *
FUNC3(struct nfp_app *app, unsigned int size,
		      enum nfp_flower_cmsg_type_port type, gfp_t flag)
{
	struct nfp_flower_cmsg_hdr *ch;
	struct sk_buff *skb;

	size += NFP_FLOWER_CMSG_HLEN;

	skb = FUNC0(app, size, flag);
	if (!skb)
		return NULL;

	ch = FUNC1(skb);
	ch->pad = 0;
	ch->version = NFP_FLOWER_CMSG_VER1;
	ch->type = type;
	FUNC2(skb, size);

	return skb;
}