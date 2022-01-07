
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmac {int lmac_id; void* name; int event_cb_lock; int cmd_lock; int wq_cmd_cmplt; struct cgx* cgx; } ;
struct cgx {int lmac_count; int cgx_id; struct lmac** lmac_idmap; int pdev; } ;


 int CGXX_CMRX_INT_ENA_W1S ;
 int CGXX_CMRX_RX_LMACS ;
 scalar_t__ CGX_LMAC_FWI ;
 int ENOMEM ;
 int FW_CGX_INT ;
 int GFP_KERNEL ;
 int MAX_LMAC_PER_CGX ;
 int cgx_fwi_event_handler ;
 int cgx_lmac_verify_fwi_version (struct cgx*) ;
 int cgx_read (struct cgx*,int ,int ) ;
 int cgx_write (struct cgx*,int,int ,int ) ;
 int init_waitqueue_head (int *) ;
 void* kcalloc (int,int,int ) ;
 int mutex_init (int *) ;
 int pci_irq_vector (int ,scalar_t__) ;
 int request_irq (int ,int ,int ,void*,struct lmac*) ;
 int spin_lock_init (int *) ;
 int sprintf (void*,char*,int,int) ;

__attribute__((used)) static int cgx_lmac_init(struct cgx *cgx)
{
 struct lmac *lmac;
 int i, err;

 cgx->lmac_count = cgx_read(cgx, 0, CGXX_CMRX_RX_LMACS) & 0x7;
 if (cgx->lmac_count > MAX_LMAC_PER_CGX)
  cgx->lmac_count = MAX_LMAC_PER_CGX;

 for (i = 0; i < cgx->lmac_count; i++) {
  lmac = kcalloc(1, sizeof(struct lmac), GFP_KERNEL);
  if (!lmac)
   return -ENOMEM;
  lmac->name = kcalloc(1, sizeof("cgx_fwi_xxx_yyy"), GFP_KERNEL);
  if (!lmac->name)
   return -ENOMEM;
  sprintf(lmac->name, "cgx_fwi_%d_%d", cgx->cgx_id, i);
  lmac->lmac_id = i;
  lmac->cgx = cgx;
  init_waitqueue_head(&lmac->wq_cmd_cmplt);
  mutex_init(&lmac->cmd_lock);
  spin_lock_init(&lmac->event_cb_lock);
  err = request_irq(pci_irq_vector(cgx->pdev,
       CGX_LMAC_FWI + i * 9),
       cgx_fwi_event_handler, 0, lmac->name, lmac);
  if (err)
   return err;


  cgx_write(cgx, lmac->lmac_id, CGXX_CMRX_INT_ENA_W1S,
     FW_CGX_INT);


  cgx->lmac_idmap[i] = lmac;
 }

 return cgx_lmac_verify_fwi_version(cgx);
}
