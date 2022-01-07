
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jme_adapter {int rxclean_task; int rxempty_task; int rx_empty; int flags; int txclean_task; int pcc_task; int linkch_task; } ;


 int INTR_ENABLE ;
 int INTR_LINKCH ;
 int INTR_PCCRX0 ;
 int INTR_PCCRX0TO ;
 int INTR_PCCTX ;
 int INTR_PCCTXTO ;
 int INTR_RX0 ;
 int INTR_RX0EMP ;
 int INTR_SWINTR ;
 int INTR_TMINTR ;
 int INTR_TX0 ;
 int JME_FLAG_POLL ;
 int JME_IENC ;
 int JME_IENS ;
 int JME_IEVE ;
 int JME_RX_SCHEDULE (struct jme_adapter*) ;
 int JME_RX_SCHEDULE_PREP (struct jme_adapter*) ;
 int atomic_inc (int *) ;
 int jme_polling_mode (struct jme_adapter*) ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 int jwrite32f (struct jme_adapter*,int ,int ) ;
 scalar_t__ likely (int ) ;
 int tasklet_hi_schedule (int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
jme_intr_msi(struct jme_adapter *jme, u32 intrstat)
{



 jwrite32f(jme, JME_IENC, INTR_ENABLE);

 if (intrstat & (INTR_LINKCH | INTR_SWINTR)) {




  jwrite32(jme, JME_IEVE, intrstat);
  tasklet_schedule(&jme->linkch_task);
  goto out_reenable;
 }

 if (intrstat & INTR_TMINTR) {
  jwrite32(jme, JME_IEVE, INTR_TMINTR);
  tasklet_schedule(&jme->pcc_task);
 }

 if (intrstat & (INTR_PCCTXTO | INTR_PCCTX)) {
  jwrite32(jme, JME_IEVE, INTR_PCCTXTO | INTR_PCCTX | INTR_TX0);
  tasklet_schedule(&jme->txclean_task);
 }

 if ((intrstat & (INTR_PCCRX0TO | INTR_PCCRX0 | INTR_RX0EMP))) {
  jwrite32(jme, JME_IEVE, (intrstat & (INTR_PCCRX0TO |
           INTR_PCCRX0 |
           INTR_RX0EMP)) |
     INTR_RX0);
 }

 if (test_bit(JME_FLAG_POLL, &jme->flags)) {
  if (intrstat & INTR_RX0EMP)
   atomic_inc(&jme->rx_empty);

  if ((intrstat & (INTR_PCCRX0TO | INTR_PCCRX0 | INTR_RX0EMP))) {
   if (likely(JME_RX_SCHEDULE_PREP(jme))) {
    jme_polling_mode(jme);
    JME_RX_SCHEDULE(jme);
   }
  }
 } else {
  if (intrstat & INTR_RX0EMP) {
   atomic_inc(&jme->rx_empty);
   tasklet_hi_schedule(&jme->rxempty_task);
  } else if (intrstat & (INTR_PCCRX0TO | INTR_PCCRX0)) {
   tasklet_hi_schedule(&jme->rxclean_task);
  }
 }

out_reenable:



 jwrite32f(jme, JME_IENS, INTR_ENABLE);
}
