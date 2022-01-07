
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct TYPE_6__ {int work; void* ctxptr; } ;
struct octeon_mbox {size_t q_no; TYPE_3__ mbox_poll_wk; int * mbox_read_reg; int * mbox_write_reg; int * mbox_int_reg; int state; struct octeon_device* oct_dev; int lock; } ;
struct TYPE_4__ {size_t max_vfs; size_t rings_per_vf; } ;
struct octeon_device {scalar_t__ rev_id; struct octeon_mbox** mbox; TYPE_2__* mmio; TYPE_1__ sriov_info; int pf_num; int pcie_port; } ;
struct TYPE_5__ {scalar_t__ hw_addr; } ;


 int CN23XX_SLI_MAC_PF_MBOX_INT (int ,int ) ;
 int CN23XX_SLI_PKT_PF_VF_MBOX_SIG (size_t,int) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ OCTEON_CN23XX_REV_1_1 ;
 int OCTEON_MBOX_STATE_IDLE ;
 int OCTEON_PFVFSIG ;
 int cn23xx_pf_mbox_thread ;
 int memset (struct octeon_mbox*,int ,int) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_init (int *) ;
 int vfree (struct octeon_mbox*) ;
 struct octeon_mbox* vmalloc (int) ;
 int writeq (int ,int *) ;

__attribute__((used)) static int cn23xx_setup_pf_mbox(struct octeon_device *oct)
{
 struct octeon_mbox *mbox = ((void*)0);
 u16 mac_no = oct->pcie_port;
 u16 pf_num = oct->pf_num;
 u32 q_no, i;

 if (!oct->sriov_info.max_vfs)
  return 0;

 for (i = 0; i < oct->sriov_info.max_vfs; i++) {
  q_no = i * oct->sriov_info.rings_per_vf;

  mbox = vmalloc(sizeof(*mbox));
  if (!mbox)
   goto free_mbox;

  memset(mbox, 0, sizeof(struct octeon_mbox));

  spin_lock_init(&mbox->lock);

  mbox->oct_dev = oct;

  mbox->q_no = q_no;

  mbox->state = OCTEON_MBOX_STATE_IDLE;


  mbox->mbox_int_reg = (u8 *)oct->mmio[0].hw_addr +
         CN23XX_SLI_MAC_PF_MBOX_INT(mac_no, pf_num);


  mbox->mbox_write_reg = (u8 *)oct->mmio[0].hw_addr +
           CN23XX_SLI_PKT_PF_VF_MBOX_SIG(q_no, 0);


  mbox->mbox_read_reg = (u8 *)oct->mmio[0].hw_addr +
          CN23XX_SLI_PKT_PF_VF_MBOX_SIG(q_no, 1);


  INIT_DELAYED_WORK(&mbox->mbox_poll_wk.work,
      cn23xx_pf_mbox_thread);
  mbox->mbox_poll_wk.ctxptr = (void *)mbox;

  oct->mbox[q_no] = mbox;

  writeq(OCTEON_PFVFSIG, mbox->mbox_read_reg);
 }

 if (oct->rev_id < OCTEON_CN23XX_REV_1_1)
  schedule_delayed_work(&oct->mbox[0]->mbox_poll_wk.work,
          msecs_to_jiffies(0));

 return 0;

free_mbox:
 while (i) {
  i--;
  vfree(oct->mbox[i]);
 }

 return 1;
}
