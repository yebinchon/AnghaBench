
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union ionic_lif_config {int * queue_count; } ;
struct TYPE_8__ {int qid_count; } ;
struct TYPE_9__ {TYPE_3__ eq_qtype; } ;
struct TYPE_6__ {union ionic_lif_config config; } ;
struct TYPE_10__ {TYPE_4__ rdma; TYPE_1__ eth; } ;
struct TYPE_7__ {int nintrs; } ;
struct ionic_identity {TYPE_5__ lif; TYPE_2__ dev; } ;
struct ionic {unsigned int nnqs_per_lif; unsigned int neqs_per_lif; unsigned int ntxqs_per_lif; unsigned int nrxqs_per_lif; unsigned int nintrs; int dev; struct ionic_identity ident; } ;


 int ENOSPC ;
 size_t IONIC_QTYPE_NOTIFYQ ;
 size_t IONIC_QTYPE_RXQ ;
 size_t IONIC_QTYPE_TXQ ;
 int dev_err (int ,char*,unsigned int) ;
 int ionic_bus_alloc_irq_vectors (struct ionic*,unsigned int) ;
 int ionic_bus_free_irq_vectors (struct ionic*) ;
 int ionic_debugfs_add_sizes (struct ionic*) ;
 unsigned int le32_to_cpu (int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int num_online_cpus () ;

int ionic_lifs_size(struct ionic *ionic)
{
 struct ionic_identity *ident = &ionic->ident;
 unsigned int nintrs, dev_nintrs;
 union ionic_lif_config *lc;
 unsigned int ntxqs_per_lif;
 unsigned int nrxqs_per_lif;
 unsigned int neqs_per_lif;
 unsigned int nnqs_per_lif;
 unsigned int nxqs, neqs;
 unsigned int min_intrs;
 int err;

 lc = &ident->lif.eth.config;
 dev_nintrs = le32_to_cpu(ident->dev.nintrs);
 neqs_per_lif = le32_to_cpu(ident->lif.rdma.eq_qtype.qid_count);
 nnqs_per_lif = le32_to_cpu(lc->queue_count[IONIC_QTYPE_NOTIFYQ]);
 ntxqs_per_lif = le32_to_cpu(lc->queue_count[IONIC_QTYPE_TXQ]);
 nrxqs_per_lif = le32_to_cpu(lc->queue_count[IONIC_QTYPE_RXQ]);

 nxqs = min(ntxqs_per_lif, nrxqs_per_lif);
 nxqs = min(nxqs, num_online_cpus());
 neqs = min(neqs_per_lif, num_online_cpus());

try_again:





 nintrs = 1 + nxqs + neqs;
 min_intrs = 2;

 if (nintrs > dev_nintrs)
  goto try_fewer;

 err = ionic_bus_alloc_irq_vectors(ionic, nintrs);
 if (err < 0 && err != -ENOSPC) {
  dev_err(ionic->dev, "Can't get intrs from OS: %d\n", err);
  return err;
 }
 if (err == -ENOSPC)
  goto try_fewer;

 if (err != nintrs) {
  ionic_bus_free_irq_vectors(ionic);
  goto try_fewer;
 }

 ionic->nnqs_per_lif = nnqs_per_lif;
 ionic->neqs_per_lif = neqs;
 ionic->ntxqs_per_lif = nxqs;
 ionic->nrxqs_per_lif = nxqs;
 ionic->nintrs = nintrs;

 ionic_debugfs_add_sizes(ionic);

 return 0;

try_fewer:
 if (nnqs_per_lif > 1) {
  nnqs_per_lif >>= 1;
  goto try_again;
 }
 if (neqs > 1) {
  neqs >>= 1;
  goto try_again;
 }
 if (nxqs > 1) {
  nxqs >>= 1;
  goto try_again;
 }
 dev_err(ionic->dev, "Can't get minimum %d intrs from OS\n", min_intrs);
 return -ENOSPC;
}
