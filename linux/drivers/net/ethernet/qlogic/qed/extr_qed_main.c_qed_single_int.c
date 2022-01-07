
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qed_simd_fp_handler {int token; int (* func ) (int ) ;} ;
struct qed_hwfn {struct qed_simd_fp_handler* simd_proto_handler; int sp_dpc; } ;
struct qed_dev {int num_hwfns; struct qed_hwfn* hwfns; } ;
typedef int irqreturn_t ;


 int DP_NOTICE (struct qed_hwfn*,char*,int,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NETIF_MSG_INTR ;
 int qed_int_igu_read_sisr_reg (struct qed_hwfn*) ;
 int stub1 (int ) ;
 int tasklet_schedule (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t qed_single_int(int irq, void *dev_instance)
{
 struct qed_dev *cdev = (struct qed_dev *)dev_instance;
 struct qed_hwfn *hwfn;
 irqreturn_t rc = IRQ_NONE;
 u64 status;
 int i, j;

 for (i = 0; i < cdev->num_hwfns; i++) {
  status = qed_int_igu_read_sisr_reg(&cdev->hwfns[i]);

  if (!status)
   continue;

  hwfn = &cdev->hwfns[i];


  if (unlikely(status & 0x1)) {
   tasklet_schedule(hwfn->sp_dpc);
   status &= ~0x1;
   rc = IRQ_HANDLED;
  }


  for (j = 0; j < 64; j++) {
   if ((0x2ULL << j) & status) {
    struct qed_simd_fp_handler *p_handler =
     &hwfn->simd_proto_handler[j];

    if (p_handler->func)
     p_handler->func(p_handler->token);
    else
     DP_NOTICE(hwfn,
        "Not calling fastpath handler as it is NULL [handler #%d, status 0x%llx]\n",
        j, status);

    status &= ~(0x2ULL << j);
    rc = IRQ_HANDLED;
   }
  }

  if (unlikely(status))
   DP_VERBOSE(hwfn, NETIF_MSG_INTR,
       "got an unknown interrupt status 0x%llx\n",
       status);
 }

 return rc;
}
