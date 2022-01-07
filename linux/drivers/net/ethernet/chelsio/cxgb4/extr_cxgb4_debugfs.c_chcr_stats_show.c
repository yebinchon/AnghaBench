
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct adapter* private; } ;
struct TYPE_2__ {int ipsec_cnt; int fallback; int error; int complete; int aead_rqst; int digest_rqst; int cipher_rqst; } ;
struct adapter {TYPE_1__ chcr_stats; } ;


 int atomic_read (int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int chcr_stats_show(struct seq_file *seq, void *v)
{
 struct adapter *adap = seq->private;

 seq_puts(seq, "Chelsio Crypto Accelerator Stats \n");
 seq_printf(seq, "Cipher Ops: %10u \n",
     atomic_read(&adap->chcr_stats.cipher_rqst));
 seq_printf(seq, "Digest Ops: %10u \n",
     atomic_read(&adap->chcr_stats.digest_rqst));
 seq_printf(seq, "Aead Ops: %10u \n",
     atomic_read(&adap->chcr_stats.aead_rqst));
 seq_printf(seq, "Completion: %10u \n",
     atomic_read(&adap->chcr_stats.complete));
 seq_printf(seq, "Error: %10u \n",
     atomic_read(&adap->chcr_stats.error));
 seq_printf(seq, "Fallback: %10u \n",
     atomic_read(&adap->chcr_stats.fallback));
 seq_printf(seq, "IPSec PDU: %10u\n",
     atomic_read(&adap->chcr_stats.ipsec_cnt));
 return 0;
}
