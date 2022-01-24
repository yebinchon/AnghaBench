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
struct nfp_net_r_vector {int /*<<< orphan*/  lock; } ;
struct nfp_net {struct nfp_net_r_vector* r_vecs; } ;

/* Variables and functions */
 int FUNC0 (struct nfp_net*,struct nfp_net_r_vector*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct nfp_net *nn, struct sk_buff *skb)
{
	struct nfp_net_r_vector *r_vec = &nn->r_vecs[0];
	bool ret;

	FUNC1(&r_vec->lock);
	ret = FUNC0(nn, r_vec, skb, false);
	FUNC2(&r_vec->lock);

	return ret;
}