
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct octeon_instr_queue {int max_count; int base_addr_dma; scalar_t__ base_addr; struct octeon_instr_queue* request_list; } ;
struct TYPE_6__ {unsigned long long iq; } ;
struct octeon_device {int num_iqs; struct octeon_instr_queue** instr_queue; TYPE_3__ io_qmask; TYPE_2__* check_db_wq; } ;
struct TYPE_4__ {int work; } ;
struct TYPE_5__ {int wq; TYPE_1__ wk; } ;


 int CFG_GET_IQ_INSTR_TYPE (int ) ;
 int CHIP_CONF (struct octeon_device*,int ) ;
 scalar_t__ OCTEON_CN23XX_PF (struct octeon_device*) ;
 scalar_t__ OCTEON_CN23XX_VF (struct octeon_device*) ;
 scalar_t__ OCTEON_CN6XXX (struct octeon_device*) ;
 int cancel_delayed_work_sync (int *) ;
 int cn23xx_pf ;
 int cn23xx_vf ;
 int cn6xxx ;
 int destroy_workqueue (int ) ;
 int lio_dma_free (struct octeon_device*,size_t,scalar_t__,int ) ;
 int vfree (struct octeon_instr_queue*) ;

int octeon_delete_instr_queue(struct octeon_device *oct, u32 iq_no)
{
 u64 desc_size = 0, q_size;
 struct octeon_instr_queue *iq = oct->instr_queue[iq_no];

 cancel_delayed_work_sync(&oct->check_db_wq[iq_no].wk.work);
 destroy_workqueue(oct->check_db_wq[iq_no].wq);

 if (OCTEON_CN6XXX(oct))
  desc_size =
      CFG_GET_IQ_INSTR_TYPE(CHIP_CONF(oct, cn6xxx));
 else if (OCTEON_CN23XX_PF(oct))
  desc_size =
      CFG_GET_IQ_INSTR_TYPE(CHIP_CONF(oct, cn23xx_pf));
 else if (OCTEON_CN23XX_VF(oct))
  desc_size =
      CFG_GET_IQ_INSTR_TYPE(CHIP_CONF(oct, cn23xx_vf));

 vfree(iq->request_list);

 if (iq->base_addr) {
  q_size = iq->max_count * desc_size;
  lio_dma_free(oct, (u32)q_size, iq->base_addr,
        iq->base_addr_dma);
  oct->io_qmask.iq &= ~(1ULL << iq_no);
  vfree(oct->instr_queue[iq_no]);
  oct->instr_queue[iq_no] = ((void*)0);
  oct->num_iqs--;
  return 0;
 }
 return 1;
}
