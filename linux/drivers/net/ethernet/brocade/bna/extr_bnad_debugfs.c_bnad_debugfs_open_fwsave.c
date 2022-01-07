
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {struct bnad* i_private; } ;
struct file {struct bnad_debug_info* private_data; } ;
struct bnad_debug_info {int buffer_len; struct bnad_debug_info* debug_buffer; } ;
struct TYPE_3__ {int ioc; } ;
struct TYPE_4__ {TYPE_1__ ioceth; } ;
struct bnad {int netdev; int bna_lock; TYPE_2__ bna; } ;


 int BFA_STATUS_ENOFSAVE ;
 int BFA_STATUS_OK ;
 int BNA_DBG_FWTRC_LEN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bfa_nw_ioc_debug_fwsave (int *,struct bnad_debug_info*,int*) ;
 int kfree (struct bnad_debug_info*) ;
 void* kzalloc (int,int ) ;
 int netdev_warn (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
bnad_debugfs_open_fwsave(struct inode *inode, struct file *file)
{
 struct bnad *bnad = inode->i_private;
 struct bnad_debug_info *fw_debug;
 unsigned long flags;
 int rc;

 fw_debug = kzalloc(sizeof(struct bnad_debug_info), GFP_KERNEL);
 if (!fw_debug)
  return -ENOMEM;

 fw_debug->buffer_len = BNA_DBG_FWTRC_LEN;

 fw_debug->debug_buffer = kzalloc(fw_debug->buffer_len, GFP_KERNEL);
 if (!fw_debug->debug_buffer) {
  kfree(fw_debug);
  fw_debug = ((void*)0);
  return -ENOMEM;
 }

 spin_lock_irqsave(&bnad->bna_lock, flags);
 rc = bfa_nw_ioc_debug_fwsave(&bnad->bna.ioceth.ioc,
   fw_debug->debug_buffer,
   &fw_debug->buffer_len);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
 if (rc != BFA_STATUS_OK && rc != BFA_STATUS_ENOFSAVE) {
  kfree(fw_debug->debug_buffer);
  fw_debug->debug_buffer = ((void*)0);
  kfree(fw_debug);
  fw_debug = ((void*)0);
  netdev_warn(bnad->netdev, "failed to collect fwsave\n");
  return -ENOMEM;
 }

 file->private_data = fw_debug;

 return 0;
}
