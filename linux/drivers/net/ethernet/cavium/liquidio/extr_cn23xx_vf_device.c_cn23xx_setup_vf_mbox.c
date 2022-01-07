
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {struct octeon_mbox* ctxptr; int work; } ;
struct octeon_mbox {int * mbox_read_reg; TYPE_2__ mbox_poll_wk; int * mbox_write_reg; int * mbox_int_reg; int state; scalar_t__ q_no; struct octeon_device* oct_dev; int lock; } ;
struct octeon_device {struct octeon_mbox** mbox; TYPE_1__* mmio; } ;
struct TYPE_3__ {scalar_t__ hw_addr; } ;


 int CN23XX_SLI_PKT_PF_VF_MBOX_SIG (int ,int) ;
 int CN23XX_VF_SLI_PKT_MBOX_INT (int ) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int OCTEON_MBOX_STATE_IDLE ;
 int OCTEON_PFVFSIG ;
 int cn23xx_vf_mbox_thread ;
 int memset (struct octeon_mbox*,int ,int) ;
 int spin_lock_init (int *) ;
 struct octeon_mbox* vmalloc (int) ;
 int writeq (int ,int *) ;

__attribute__((used)) static int cn23xx_setup_vf_mbox(struct octeon_device *oct)
{
 struct octeon_mbox *mbox = ((void*)0);

 mbox = vmalloc(sizeof(*mbox));
 if (!mbox)
  return 1;

 memset(mbox, 0, sizeof(struct octeon_mbox));

 spin_lock_init(&mbox->lock);

 mbox->oct_dev = oct;

 mbox->q_no = 0;

 mbox->state = OCTEON_MBOX_STATE_IDLE;


 mbox->mbox_int_reg =
     (u8 *)oct->mmio[0].hw_addr + CN23XX_VF_SLI_PKT_MBOX_INT(0);

 mbox->mbox_read_reg =
     (u8 *)oct->mmio[0].hw_addr + CN23XX_SLI_PKT_PF_VF_MBOX_SIG(0, 0);

 mbox->mbox_write_reg =
     (u8 *)oct->mmio[0].hw_addr + CN23XX_SLI_PKT_PF_VF_MBOX_SIG(0, 1);

 INIT_DELAYED_WORK(&mbox->mbox_poll_wk.work,
     cn23xx_vf_mbox_thread);

 mbox->mbox_poll_wk.ctxptr = mbox;

 oct->mbox[0] = mbox;

 writeq(OCTEON_PFVFSIG, mbox->mbox_read_reg);

 return 0;
}
