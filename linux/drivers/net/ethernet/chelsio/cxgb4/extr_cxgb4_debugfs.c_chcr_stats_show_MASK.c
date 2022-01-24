#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct adapter* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  ipsec_cnt; int /*<<< orphan*/  fallback; int /*<<< orphan*/  error; int /*<<< orphan*/  complete; int /*<<< orphan*/  aead_rqst; int /*<<< orphan*/  digest_rqst; int /*<<< orphan*/  cipher_rqst; } ;
struct adapter {TYPE_1__ chcr_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	struct adapter *adap = seq->private;

	FUNC2(seq, "Chelsio Crypto Accelerator Stats \n");
	FUNC1(seq, "Cipher Ops: %10u \n",
		   FUNC0(&adap->chcr_stats.cipher_rqst));
	FUNC1(seq, "Digest Ops: %10u \n",
		   FUNC0(&adap->chcr_stats.digest_rqst));
	FUNC1(seq, "Aead Ops: %10u \n",
		   FUNC0(&adap->chcr_stats.aead_rqst));
	FUNC1(seq, "Completion: %10u \n",
		   FUNC0(&adap->chcr_stats.complete));
	FUNC1(seq, "Error: %10u \n",
		   FUNC0(&adap->chcr_stats.error));
	FUNC1(seq, "Fallback: %10u \n",
		   FUNC0(&adap->chcr_stats.fallback));
	FUNC1(seq, "IPSec PDU: %10u\n",
		   FUNC0(&adap->chcr_stats.ipsec_cnt));
	return 0;
}