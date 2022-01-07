
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_ctx {int num_descriptors; int last_cmd_status; int lock; int pring_va; } ;
struct wil6210_priv {struct pmc_ctx pmc; } ;
struct vring_rx_desc {int dummy; } ;
struct seq_file {struct wil6210_priv* private; } ;


 int EPERM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int seq_write (struct seq_file*,int ,size_t) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,size_t) ;
 int wil_err (struct wil6210_priv*,char*) ;
 int wil_is_pmc_allocated (struct pmc_ctx*) ;

int wil_pmcring_read(struct seq_file *s, void *data)
{
 struct wil6210_priv *wil = s->private;
 struct pmc_ctx *pmc = &wil->pmc;
 size_t pmc_ring_size =
  sizeof(struct vring_rx_desc) * pmc->num_descriptors;

 mutex_lock(&pmc->lock);

 if (!wil_is_pmc_allocated(pmc)) {
  wil_err(wil, "error, pmc is not allocated!\n");
  pmc->last_cmd_status = -EPERM;
  mutex_unlock(&pmc->lock);
  return -EPERM;
 }

 wil_dbg_misc(wil, "pmcring_read: size %zu\n", pmc_ring_size);

 seq_write(s, pmc->pring_va, pmc_ring_size);

 mutex_unlock(&pmc->lock);

 return 0;
}
