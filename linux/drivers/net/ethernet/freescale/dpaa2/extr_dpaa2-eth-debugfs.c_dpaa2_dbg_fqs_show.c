
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char* u32 ;
struct seq_file {scalar_t__ private; } ;
struct dpaa2_eth_priv {int num_fqs; struct dpaa2_eth_fq* fq; TYPE_1__* net_dev; } ;
struct TYPE_4__ {char* frames; } ;
struct dpaa2_eth_fq {char* fqid; char* target_cpu; TYPE_2__ stats; } ;
struct TYPE_3__ {int name; } ;


 int dpaa2_io_query_fq_count (int *,char*,char**,char**) ;
 char* fq_type_to_str (struct dpaa2_eth_fq*) ;
 int seq_printf (struct seq_file*,char*,char*,...) ;

__attribute__((used)) static int dpaa2_dbg_fqs_show(struct seq_file *file, void *offset)
{
 struct dpaa2_eth_priv *priv = (struct dpaa2_eth_priv *)file->private;
 struct dpaa2_eth_fq *fq;
 u32 fcnt, bcnt;
 int i, err;

 seq_printf(file, "FQ stats for %s:\n", priv->net_dev->name);
 seq_printf(file, "%s%16s%16s%16s%16s\n",
     "VFQID", "CPU", "Type", "Frames", "Pending frames");

 for (i = 0; i < priv->num_fqs; i++) {
  fq = &priv->fq[i];
  err = dpaa2_io_query_fq_count(((void*)0), fq->fqid, &fcnt, &bcnt);
  if (err)
   fcnt = 0;

  seq_printf(file, "%5d%16d%16s%16llu%16u\n",
      fq->fqid,
      fq->target_cpu,
      fq_type_to_str(fq),
      fq->stats.frames,
      fcnt);
 }

 return 0;
}
