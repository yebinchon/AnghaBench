
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct brcmf_commonring {int inited; scalar_t__ f_ptr; int cr_ctx; int (* cr_write_wptr ) (int ) ;scalar_t__ w_ptr; int (* cr_write_rptr ) (int ) ;scalar_t__ r_ptr; int lock; void* buf_addr; void* item_len; void* depth; } ;


 int spin_lock_init (int *) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

void brcmf_commonring_config(struct brcmf_commonring *commonring, u16 depth,
        u16 item_len, void *buf_addr)
{
 commonring->depth = depth;
 commonring->item_len = item_len;
 commonring->buf_addr = buf_addr;
 if (!commonring->inited) {
  spin_lock_init(&commonring->lock);
  commonring->inited = 1;
 }
 commonring->r_ptr = 0;
 if (commonring->cr_write_rptr)
  commonring->cr_write_rptr(commonring->cr_ctx);
 commonring->w_ptr = 0;
 if (commonring->cr_write_wptr)
  commonring->cr_write_wptr(commonring->cr_ctx);
 commonring->f_ptr = 0;
}
