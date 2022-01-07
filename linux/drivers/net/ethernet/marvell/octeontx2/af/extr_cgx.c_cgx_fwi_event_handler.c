
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct lmac {int cmd_pend; int lmac_id; struct cgx* cgx; int wq_cmd_cmplt; int resp; } ;
struct cgx {int dummy; } ;
typedef int irqreturn_t ;


 int CGXX_CMRX_INT ;
 int CGX_EVENT_REG ;


 int EVTREG_ACK ;
 int EVTREG_EVT_TYPE ;
 int FIELD_GET (int ,int ) ;
 int FW_CGX_INT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int cgx_cmdresp_is_linkevent (int ) ;
 int cgx_event_is_linkevent (int ) ;
 int cgx_link_change_handler (int ,struct lmac*) ;
 int cgx_read (struct cgx*,int ,int ) ;
 int cgx_write (struct cgx*,int ,int ,int ) ;
 int smp_wmb () ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t cgx_fwi_event_handler(int irq, void *data)
{
 struct lmac *lmac = data;
 struct cgx *cgx;
 u64 event;

 cgx = lmac->cgx;

 event = cgx_read(cgx, lmac->lmac_id, CGX_EVENT_REG);

 if (!FIELD_GET(EVTREG_ACK, event))
  return IRQ_NONE;

 switch (FIELD_GET(EVTREG_EVT_TYPE, event)) {
 case 128:



  lmac->resp = event;

  smp_wmb();




  if (cgx_cmdresp_is_linkevent(event))
   cgx_link_change_handler(event, lmac);


  lmac->cmd_pend = 0;
  wake_up_interruptible(&lmac->wq_cmd_cmplt);
  break;
 case 129:
  if (cgx_event_is_linkevent(event))
   cgx_link_change_handler(event, lmac);
  break;
 }





 cgx_write(lmac->cgx, lmac->lmac_id, CGX_EVENT_REG, 0);
 cgx_write(lmac->cgx, lmac->lmac_id, CGXX_CMRX_INT, FW_CGX_INT);

 return IRQ_HANDLED;
}
