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
typedef  char* u32 ;
struct seq_file {scalar_t__ private; } ;
struct dpaa2_eth_priv {int num_fqs; struct dpaa2_eth_fq* fq; TYPE_1__* net_dev; } ;
struct TYPE_4__ {char* frames; } ;
struct dpaa2_eth_fq {char* fqid; char* target_cpu; TYPE_2__ stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,char**,char**) ; 
 char* FUNC1 (struct dpaa2_eth_fq*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct seq_file *file, void *offset)
{
	struct dpaa2_eth_priv *priv = (struct dpaa2_eth_priv *)file->private;
	struct dpaa2_eth_fq *fq;
	u32 fcnt, bcnt;
	int i, err;

	FUNC2(file, "FQ stats for %s:\n", priv->net_dev->name);
	FUNC2(file, "%s%16s%16s%16s%16s\n",
		   "VFQID", "CPU", "Type", "Frames", "Pending frames");

	for (i = 0; i <  priv->num_fqs; i++) {
		fq = &priv->fq[i];
		err = FUNC0(NULL, fq->fqid, &fcnt, &bcnt);
		if (err)
			fcnt = 0;

		FUNC2(file, "%5d%16d%16s%16llu%16u\n",
			   fq->fqid,
			   fq->target_cpu,
			   FUNC1(fq),
			   fq->stats.frames,
			   fcnt);
	}

	return 0;
}