
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_ctx {size_t last_cmd_status; size_t descriptor_size; size_t num_descriptors; int lock; } ;
struct wil6210_priv {struct pmc_ctx pmc; } ;
struct file {size_t f_pos; struct wil6210_priv* private_data; } ;
typedef size_t loff_t ;


 size_t EINVAL ;
 size_t EPERM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wil_err (struct wil6210_priv*,char*) ;
 int wil_is_pmc_allocated (struct pmc_ctx*) ;

loff_t wil_pmc_llseek(struct file *filp, loff_t off, int whence)
{
 loff_t newpos;
 struct wil6210_priv *wil = filp->private_data;
 struct pmc_ctx *pmc = &wil->pmc;
 size_t pmc_size;

 mutex_lock(&pmc->lock);

 if (!wil_is_pmc_allocated(pmc)) {
  wil_err(wil, "error, pmc is not allocated!\n");
  pmc->last_cmd_status = -EPERM;
  mutex_unlock(&pmc->lock);
  return -EPERM;
 }

 pmc_size = pmc->descriptor_size * pmc->num_descriptors;

 switch (whence) {
 case 0:
  newpos = off;
  break;

 case 1:
  newpos = filp->f_pos + off;
  break;

 case 2:
  newpos = pmc_size;
  break;

 default:
  newpos = -EINVAL;
  goto out;
 }

 if (newpos < 0) {
  newpos = -EINVAL;
  goto out;
 }
 if (newpos > pmc_size)
  newpos = pmc_size;

 filp->f_pos = newpos;

out:
 mutex_unlock(&pmc->lock);

 return newpos;
}
