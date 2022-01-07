
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct qed_hwfn {TYPE_2__* cdev; } ;
struct qed_fcoe_conn {int * xferq_addr; scalar_t__* xferq_addr_virt_addr; int xferq_pbl_addr; scalar_t__ xferq_pbl_addr_virt_addr; int * confq_addr; scalar_t__* confq_addr_virt_addr; int confq_pbl_addr; scalar_t__ confq_pbl_addr_virt_addr; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 size_t ARRAY_SIZE (int *) ;
 int QED_CHAIN_PAGE_SIZE ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int kfree (struct qed_fcoe_conn*) ;

__attribute__((used)) static void qed_fcoe_free_connection(struct qed_hwfn *p_hwfn,
         struct qed_fcoe_conn *p_conn)
{
 u32 i;

 if (!p_conn)
  return;

 if (p_conn->confq_pbl_addr_virt_addr)
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      QED_CHAIN_PAGE_SIZE,
      p_conn->confq_pbl_addr_virt_addr,
      p_conn->confq_pbl_addr);

 for (i = 0; i < ARRAY_SIZE(p_conn->confq_addr); i++) {
  if (!p_conn->confq_addr_virt_addr[i])
   continue;
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      QED_CHAIN_PAGE_SIZE,
      p_conn->confq_addr_virt_addr[i],
      p_conn->confq_addr[i]);
 }

 if (p_conn->xferq_pbl_addr_virt_addr)
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      QED_CHAIN_PAGE_SIZE,
      p_conn->xferq_pbl_addr_virt_addr,
      p_conn->xferq_pbl_addr);

 for (i = 0; i < ARRAY_SIZE(p_conn->xferq_addr); i++) {
  if (!p_conn->xferq_addr_virt_addr[i])
   continue;
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      QED_CHAIN_PAGE_SIZE,
      p_conn->xferq_addr_virt_addr[i],
      p_conn->xferq_addr[i]);
 }
 kfree(p_conn);
}
