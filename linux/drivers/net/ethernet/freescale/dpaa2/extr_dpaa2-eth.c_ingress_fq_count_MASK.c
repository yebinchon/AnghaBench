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
typedef  scalar_t__ u32 ;
struct dpaa2_eth_priv {int num_fqs; int /*<<< orphan*/  net_dev; struct dpaa2_eth_fq* fq; } ;
struct dpaa2_eth_fq {int /*<<< orphan*/  fqid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static u32 FUNC2(struct dpaa2_eth_priv *priv)
{
	struct dpaa2_eth_fq *fq;
	u32 fcnt = 0, bcnt = 0, total = 0;
	int i, err;

	for (i = 0; i < priv->num_fqs; i++) {
		fq = &priv->fq[i];
		err = FUNC0(NULL, fq->fqid, &fcnt, &bcnt);
		if (err) {
			FUNC1(priv->net_dev, "query_fq_count failed");
			break;
		}
		total += fcnt;
	}

	return total;
}